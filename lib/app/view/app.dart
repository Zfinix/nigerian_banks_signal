import 'package:flutter/cupertino.dart';
import 'package:nigerian_banks_signal_example/views/bank_list/bank_list.dart';
import 'package:nigerian_banks_signal_example/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: NigerianBanksPage(),
    );
  }
}
