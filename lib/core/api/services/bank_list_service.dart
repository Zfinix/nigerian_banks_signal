import 'package:dio/dio.dart';
import 'package:freezed_result/freezed_result.dart';
import 'package:nigerian_banks_signal_example/core/core.dart';

class BankListService {
  factory BankListService() => _instance ??= BankListService._();

  BankListService._();
  static BankListService? _instance;

  Future<Result<List<BankListResponseModel>, Exception>> fetchBankList() async {
    try {
      final request = await ApiProvider().dio.get(Globals.bankListApiUrl);

      return Result.success(
        List.from(request.data)
            .map((it) => BankListResponseModel.fromJson(it))
            .toList(),
      );
    } on DioException catch (e) {
      return Result.failure(e);
    } catch (e) {
      return Result.failure(ClientErrorException());
    }
  }
}
