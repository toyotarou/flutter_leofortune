// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extensions/extensions.dart';
import '../../models/fortune.dart';
import '../../utility/utility.dart';

class FortuneAlert extends ConsumerWidget {
  FortuneAlert({super.key, required this.fortune});

  final Fortune fortune;

  Utility utility = Utility();

  late BuildContext _context;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _context = context;

    final youbi = fortune.date.youbiStr;

    final dt = [
      fortune.date.yyyymmdd,
      utility.getYoubi(youbiStr: youbi),
    ];

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              DefaultTextStyle(
                style: const TextStyle(fontSize: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: utility.getYoubiColor(
                      date: fortune.date,
                      youbiStr: youbi,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dt.join(' ')),
                      Text(fortune.rank),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.3),
                thickness: 2,
              ),
              Expanded(
                child: displayFortune(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///
  Widget displayFortune() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('全体運'),
              Text(fortune.pointAll),
            ],
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: _context.screenSize.height / 5,
            ),
            child: Text(fortune.uranaiAll),
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
            thickness: 2,
          ),

          //

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('恋愛運'),
              Text(fortune.pointLove),
            ],
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: _context.screenSize.height / 5,
            ),
            child: Text(fortune.uranaiLove),
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
            thickness: 2,
          ),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('金運'),
              Text(fortune.pointMoney),
            ],
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: _context.screenSize.height / 5,
            ),
            child: Text(fortune.uranaiMoney),
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
            thickness: 2,
          ),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('仕事運'),
              Text(fortune.pointWork),
            ],
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: _context.screenSize.height / 5,
            ),
            child: Text(fortune.uranaiWork),
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
            thickness: 2,
          ),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('健康運'),
              Text(fortune.pointHealth),
            ],
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: _context.screenSize.height / 5,
            ),
            child: Text(fortune.uranaiHealth),
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
            thickness: 2,
          ),

          //
        ],
      ),
    );
  }
}
