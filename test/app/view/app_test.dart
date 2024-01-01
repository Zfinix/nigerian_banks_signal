import 'package:flutter_test/flutter_test.dart';
import 'package:nigerian_banks_signal_example/app/app.dart';
import 'package:nigerian_banks_signal_example/views/bank_list/bank_list.dart';

void main() {
  group('App', () {
    testWidgets('renders NigerianBanksPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(NigerianBanksPage), findsOneWidget);
    });
  });
}
