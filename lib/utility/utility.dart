// ignore_for_file: type_annotate_public_apis

import 'package:flutter/material.dart';

class Utility {
  /// 背景取得
  Widget getBackGround({context}) {
    return Image.asset(
      'assets/images/bg.jpg',
      fit: BoxFit.fitHeight,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }

  ///
  void showError(String msg) {
    ScaffoldMessenger.of(NavigationService.navigatorKey.currentContext!)
        .showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 5),
      ),
    );
  }

  ///
  String getYoubi({required String youbiStr}) {
    switch (youbiStr) {
      case 'Sunday':
        return '日';
      case 'Monday':
        return '月';
      case 'Tuesday':
        return '火';
      case 'Wednesday':
        return '水';
      case 'Thursday':
        return '木';
      case 'Friday':
        return '金';
      case 'Saturday':
        return '土';
    }

    return '';
  }

  ///
  Color getYoubiColor({
    required DateTime date,
    required String youbiStr,
  }) {
    var color = Colors.black.withOpacity(0.2);

    switch (youbiStr) {
      case 'Sunday':
        color = Colors.redAccent.withOpacity(0.2);
        break;

      case 'Saturday':
        color = Colors.blueAccent.withOpacity(0.2);
        break;

      default:
        color = Colors.black.withOpacity(0.2);
        break;
    }

    return color;
  }
}

class NavigationService {
  const NavigationService._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
