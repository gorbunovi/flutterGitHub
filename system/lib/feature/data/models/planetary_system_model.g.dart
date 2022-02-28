// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planetary_system_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanetarySystemModel _$PlanetarySystemModelFromJson(
        Map<String, dynamic> json) =>
    PlanetarySystemModel(
      (json['planets'] as List<dynamic>)
          .map((e) => PlanetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanetarySystemModelToJson(
        PlanetarySystemModel instance) =>
    <String, dynamic>{
      'planets': instance.planets,
    };
