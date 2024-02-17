// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../extensions/extensions.dart';
import '../state/fortune/fortune_notifier.dart';

import 'components/fortune_display_page.dart';

///
class TabInfo {
  TabInfo(this.label, this.widget);

  String label;
  Widget widget;
}

///
class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  List<TabInfo> tabs = [];

  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _ref = ref;

    makeYmTab();

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Leo Fortune'),
          backgroundColor: Colors.transparent,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.blueAccent,
            tabs: tabs.map((TabInfo tab) {
              return Tab(text: tab.label);
            }).toList(),
          ),
        ),

        //

        body: TabBarView(
          children: tabs.map((tab) => tab.widget).toList(),
        ),

        //
      ),
    );
  }

  ///
  void makeYmTab() {
    final list = <String>[];

    final fortuneState = _ref.watch(fortuneProvider);

    var keepYm = '';
    fortuneState.fortuneList.forEach((element) {
      if (keepYm != element.date.yyyymm) {
        list.add(element.date.yyyymm);
      }

      keepYm = element.date.yyyymm;
    });

    list
      ..sort((a, b) => -1 * a.compareTo(b))
      ..forEach(
        (element) {
          tabs.add(
            TabInfo(
              element,
              FortuneDisplayPage(ym: element),
            ),
          );
        },
      );
  }
}
