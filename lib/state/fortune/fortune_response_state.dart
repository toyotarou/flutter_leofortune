import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/fortune.dart';

part 'fortune_response_state.freezed.dart';

@freezed
class FortuneResponseState with _$FortuneResponseState {
  const factory FortuneResponseState({
    //
    @Default([]) List<Fortune> fortuneList,
  }) = _FortuneResponseState;
}
