// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leofortune4/screens/components/fortune_alert.dart';
import 'package:leofortune4/screens/components/fortune_dialog.dart';

import '../../extensions/extensions.dart';
import '../../models/fortune.dart';
import '../../state/fortune/fortune_notifier.dart';
import '../../utility/utility.dart';

class FortuneDisplayPage extends HookConsumerWidget {
  FortuneDisplayPage({super.key, required this.ym});

  final String ym;

  Utility utility = Utility();

  List<Fortune> fortuneList = [];

  late BuildContext _context;
  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _context = context;
    _ref = ref;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            utility.getBackGround(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: displayFortuneList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///
  Widget displayFortuneList() {
    final list = <Widget>[];

    final fortuneState = _ref.watch(fortuneProvider);

    final val = [
      'all',
      'money',
      'work',
      'health',
    ];

    list.add(
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(child: Text('date')),
            const Expanded(child: Text('rank')),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: val.map(Text.new).toList(),
              ),
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.check_box_outline_blank,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );

    fortuneState.fortuneList.forEach((element) {
      if (ym == element.date.yyyymm) {
        final val = [
          element.pointAll,
          element.pointMoney,
          element.pointWork,
          element.pointHealth,
        ];

        final youbi = element.date.youbiStr;

        final dt = [
          element.date.dd,
          utility.getYoubi(youbiStr: youbi),
        ];

        list.add(
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              color: utility.getYoubiColor(
                date: element.date,
                youbiStr: youbi,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(dt.join(' '))),
                Expanded(child: Text(element.rank)),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: val.map(Text.new).toList(),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    FortuneDialog(
                      context: _context,
                      widget: FortuneAlert(fortune: element),
                    );
                  },
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: list),
      ),
    );
  }
}
