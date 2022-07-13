import 'package:freezed_annotation/freezed_annotation.dart';


part 'state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState.initial() = Initial;
  const factory HomeState.incriment() = Incriment;
  const factory HomeState.dicriment() = Dicrement;
  const factory HomeState.getCount() = GetCount;

}