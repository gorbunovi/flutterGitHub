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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterData _$CounterDataFromJson(Map<String, dynamic> json) {
  return _CounterData.fromJson(json);
}

/// @nodoc
mixin _$CounterData {
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_CounterDataCopyWith<$Res>
    implements $CounterDataCopyWith<$Res> {
  factory _$$_CounterDataCopyWith(
          _$_CounterData value, $Res Function(_$_CounterData) then) =
      __$$_CounterDataCopyWithImpl<$Res>;
  @override
  $Res call({int counter});
}

/// @nodoc
class __$$_CounterDataCopyWithImpl<$Res> extends _$CounterDataCopyWithImpl<$Res>
    implements _$$_CounterDataCopyWith<$Res> {
  __$$_CounterDataCopyWithImpl(
      _$_CounterData _value, $Res Function(_$_CounterData) _then)
      : super(_value, (v) => _then(v as _$_CounterData));

  @override
  _$_CounterData get _value => super._value as _$_CounterData;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_$_CounterData(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CounterData implements _CounterData {
  const _$_CounterData({required this.counter});

  factory _$_CounterData.fromJson(Map<String, dynamic> json) =>
      _$$_CounterDataFromJson(json);

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
            other is _$_CounterData &&
            const DeepCollectionEquality().equals(other.counter, counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(counter));

  @JsonKey(ignore: true)
  @override
  _$$_CounterDataCopyWith<_$_CounterData> get copyWith =>
      __$$_CounterDataCopyWithImpl<_$_CounterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterDataToJson(this);
  }
}

abstract class _CounterData implements CounterData {
  const factory _CounterData({required final int counter}) = _$_CounterData;

  factory _CounterData.fromJson(Map<String, dynamic> json) =
      _$_CounterData.fromJson;

  @override
  int get counter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CounterDataCopyWith<_$_CounterData> get copyWith =>
      throw _privateConstructorUsedError;
}
