// ignore_for_file: avoid_dynamic_calls

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/http/client.dart';
import '../../data/http/path.dart';
import '../../extensions/extensions.dart';
import '../../models/fortune.dart';
import '../../utility/utility.dart';

import 'fortune_response_state.dart';

////////////////////////////////////////////////
final fortuneProvider =
    StateNotifierProvider.autoDispose<FortuneNotifier, FortuneResponseState>(
        (ref) {
  final client = ref.watch(httpClientProvider);

  final utility = Utility();

  return FortuneNotifier(
    const FortuneResponseState(),
    client,
    utility,
  )..getFortune();
});

class FortuneNotifier extends StateNotifier<FortuneResponseState> {
  FortuneNotifier(super.state, this.client, this.utility);

  final HttpClient client;
  final Utility utility;

  ///
  Future<void> getFortune() async {
    await client.post(path: APIPath.getGooUranai).then((value) {
      final list = <Fortune>[];

      for (var i = 0; i < value['data'].length.toString().toInt(); i++) {
        list.add(Fortune.fromJson(value['data'][i] as Map<String, dynamic>));
      }

      state = state.copyWith(fortuneList: list);
    }).catchError((error, _) {
      utility.showError('予期せぬエラーが発生しました');
    });
  }
}

////////////////////////////////////////////////
