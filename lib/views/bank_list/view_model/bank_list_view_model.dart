import 'package:nigerian_banks_signal_example/core/core.dart';
import 'package:signals/signals.dart';

class BankListViewModel {
  FutureSignal<List<BankListResponseModel>> fetchData() {
    return futureSignal(() async {
      final response = await BankListService().fetchBankList();
      return response.when(
        success: (data) => data..sort((a, b) => a.name.compareTo(b.name)),
        failure: (err) => throw err,
      );
    });
  }
}
