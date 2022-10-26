// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterDataTearOff {
  const _$CounterDataTearOff();

  _CounterData call({required int counter}) {
    return _CounterData(
      counter: counter,
    );
  }
}

/// @nodoc
const $CounterData = _$CounterDataTearOff();

/// @nodoc
mixin _$CounterData {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterDataCopyWith<CounterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDataCopyWith<$Res> {
  factory $CounterDataCopyWith(
          CounterData value, $Res Function(CounterData) then) =
      _$CounterDataCopyWithImpl<$Res>;
  $Res call({int counter});
}

/// @nodoc
class _$CounterDataCopyWithImpl<$Res> implements $CounterDataCopyWith<$Res> {
  _$CounterDataCopyWithImpl(this._value, this._then);

  final CounterData _value;
  // ignore: unused_field
  final $Res Function(CounterData) _then;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CounterDataCopyWith<$Res>
    implements $CounterDataCopyWith<$Res> {
  factory _$CounterDataCopyWith(
          _CounterData value, $Res Function(_CounterData) then) =
      __$CounterDataCopyWithImpl<$Res>;
  @override
  $Res call({int counter});
}

/// @nodoc
class __$CounterDataCopyWithImpl<$Res> extends _$CounterDataCopyWithImpl<$Res>
    implements _$CounterDataCopyWith<$Res> {
  __$CounterDataCopyWithImpl(
      _CounterData _value, $Res Function(_CounterData) _then)
      : super(_value, (v) => _then(v as _CounterData));

  @override
  _CounterData get _value => super._value as _CounterData;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_CounterData(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CounterData implements _CounterData {
  const _$_CounterData({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'CounterData(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CounterData &&
            const DeepCollectionEquality().equals(other.counter, counter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(counter));

  @JsonKey(ignore: true)
  @override
  _$CounterDataCopyWith<_CounterData> get copyWith =>
      __$CounterDataCopyWithImpl<_CounterData>(this, _$identity);
}

abstract class _CounterData implements CounterData {
  const factory _CounterData({required int counter}) = _$_CounterData;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$CounterDataCopyWith<_CounterData> get copyWith =>
      throw _privateConstructorUsedError;
}
