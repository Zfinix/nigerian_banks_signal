import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';
import 'package:nigerian_banks_signal_example/core/core.dart';
import 'package:nigerian_banks_signal_example/l10n/l10n.dart';
import 'package:nigerian_banks_signal_example/views/bank_list/bank_list.dart';
import 'package:signals/signals_flutter.dart';

class NigerianBanksPage extends StatefulWidget {
  const NigerianBanksPage({super.key});

  @override
  State<NigerianBanksPage> createState() => _NigerianBanksPageState();
}

class _NigerianBanksPageState extends State<NigerianBanksPage> {
  late final _futureSignal = BankListViewModel().fetchData();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(l10n.nigerianBanksAppBarTitle),
          ),
          const SliverGap(10),
          _futureSignal.watch(context).map(
                data: (data) => SliverList.list(
                  children: [
                    ...data
                        .map<Widget>((it) => _BankWidget(model: it))
                        .intersperse(const Gap(16)),
                  ],
                ),
                error: (error, _) => SliverFillRemaining(
                  child: Text(
                    'error:$error',
                    style: theme.textTheme.headlineMedium!,
                  ),
                ),
                loading: () => const SliverFillRemaining(
                  child: Center(child: CupertinoActivityIndicator()),
                ),
              ),
        ],
      ),
    );
  }
}

class _BankWidget extends StatelessWidget {
  const _BankWidget({
    required this.model,
  });

  final BankListResponseModel model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    const kBankWidgetSize = 60.0;
    final kBankWidgetDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: Colors.white,
    );

    return Row(
      children: [
        Center(
          child: Container(
            width: kBankWidgetSize,
            height: kBankWidgetSize,
            padding: const EdgeInsets.all(10),
            decoration: kBankWidgetDecoration,
            child: Image.network(Globals.bankLogoApiUrl(model.slug)),
          ),
        ),
        const Gap(16),
        Flexible(
          child: Container(
            width: double.infinity,
            decoration: kBankWidgetDecoration,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(2),
                Text(
                  l10n.nigerianBanksUSSDCode(model.ussd ?? 'none'),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: const Color(0xFFB5B5B5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
