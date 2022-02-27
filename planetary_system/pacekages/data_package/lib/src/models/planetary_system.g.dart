// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planetary_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanetarySystem _$PlanetarySystemFromJson(Map<String, dynamic> json) =>
    PlanetarySystem(
      (json['planets'] as List<dynamic>)
          .map((e) => Planet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanetarySystemToJson(PlanetarySystem instance) =>
    <String, dynamic>{
      'planets': instance.planets,
    };
