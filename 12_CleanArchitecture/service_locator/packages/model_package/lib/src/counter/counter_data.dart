import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_data.freezed.dart';
part 'counter.g.dart';

@freezed
class CounterData with _$CounterData {
  const factory CounterData({
    required int counter,
  }) = _CounterData;

  factory CounterData.fromJson(Map<String, dynamic> json) => _$CounterData(json);
}