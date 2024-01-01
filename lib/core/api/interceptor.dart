import 'package:dio/dio.dart';
import 'package:nigerian_banks_signal_example/core/api/api.dart';

/// AppInterceptors is an interceptor class that handles DioException
/// errors and translates them into custom exceptions for better error handling.
///
/// It provides error handling for various types of network-related issues such as
/// timeouts, bad responses, and connection errors.
///
/// Usage Example:
/// ```dart
/// final dio = Dio(); // Initialize your Dio instance
/// dio.interceptors.add(ApiInterceptors());
/// ```
class ApiInterceptors extends Interceptor {
  /// Constructor for the AppInterceptors class.
  /// Requires a Dio instance for error handling.
  const ApiInterceptors();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      // Handle various timeout errors by throwing custom exceptions.
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);

      // Handle bad responses with custom exceptions based on HTTP status codes.
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        throw NoInternetConnectionException(err.requestOptions);

      // Handle various other DioException types by returning a FailedRequestException.
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
        return handler.next(FailedRequestException(err.requestOptions));
    }
  }
}
