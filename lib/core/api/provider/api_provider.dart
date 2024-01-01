import 'package:dio/dio.dart';
import 'package:nigerian_banks_signal_example/core/core.dart';

class ApiProvider {
  factory ApiProvider() {
    return _singleton;
  }

  ApiProvider._internal();

  static final ApiProvider _singleton = ApiProvider._internal();

  final dio = Dio(); // Initialize Dio with default options.

  // You can add common configuration options here, such as base URL, headers, etc.
  void setup() {
    dio.interceptors.add(const ApiInterceptors());
  }
}
