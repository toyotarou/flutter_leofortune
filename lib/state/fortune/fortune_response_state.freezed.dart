// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fortune_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FortuneResponseState {
//
  List<Fortune> get fortuneList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FortuneResponseStateCopyWith<FortuneResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortuneResponseStateCopyWith<$Res> {
  factory $FortuneResponseStateCopyWith(FortuneResponseState value,
          $Res Function(FortuneResponseState) then) =
      _$FortuneResponseStateCopyWithImpl<$Res, FortuneResponseState>;
  @useResult
  $Res call({List<Fortune> fortuneList});
}

/// @nodoc
class _$FortuneResponseStateCopyWithImpl<$Res,
        $Val extends FortuneResponseState>
    implements $FortuneResponseStateCopyWith<$Res> {
  _$FortuneResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fortuneList = null,
  }) {
    return _then(_value.copyWith(
      fortuneList: null == fortuneList
          ? _value.fortuneList
          : fortuneList // ignore: cast_nullable_to_non_nullable
              as List<Fortune>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FortuneResponseStateCopyWith<$Res>
    implements $FortuneResponseStateCopyWith<$Res> {
  factory _$$_FortuneResponseStateCopyWith(_$_FortuneResponseState value,
          $Res Function(_$_FortuneResponseState) then) =
      __$$_FortuneResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Fortune> fortuneList});
}

/// @nodoc
class __$$_FortuneResponseStateCopyWithImpl<$Res>
    extends _$FortuneResponseStateCopyWithImpl<$Res, _$_FortuneResponseState>
    implements _$$_FortuneResponseStateCopyWith<$Res> {
  __$$_FortuneResponseStateCopyWithImpl(_$_FortuneResponseState _value,
      $Res Function(_$_FortuneResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fortuneList = null,
  }) {
    return _then(_$_FortuneResponseState(
      fortuneList: null == fortuneList
          ? _value._fortuneList
          : fortuneList // ignore: cast_nullable_to_non_nullable
              as List<Fortune>,
    ));
  }
}

/// @nodoc

class _$_FortuneResponseState implements _FortuneResponseState {
  const _$_FortuneResponseState({final List<Fortune> fortuneList = const []})
      : _fortuneList = fortuneList;

//
  final List<Fortune> _fortuneList;
//
  @override
  @JsonKey()
  List<Fortune> get fortuneList {
    if (_fortuneList is EqualUnmodifiableListView) return _fortuneList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fortuneList);
  }

  @override
  String toString() {
    return 'FortuneResponseState(fortuneList: $fortuneList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortuneResponseState &&
            const DeepCollectionEquality()
                .equals(other._fortuneList, _fortuneList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fortuneList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FortuneResponseStateCopyWith<_$_FortuneResponseState> get copyWith =>
      __$$_FortuneResponseStateCopyWithImpl<_$_FortuneResponseState>(
          this, _$identity);
}

abstract class _FortuneResponseState implements FortuneResponseState {
  const factory _FortuneResponseState({final List<Fortune> fortuneList}) =
      _$_FortuneResponseState;

  @override //
  List<Fortune> get fortuneList;
  @override
  @JsonKey(ignore: true)
  _$$_FortuneResponseStateCopyWith<_$_FortuneResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}
