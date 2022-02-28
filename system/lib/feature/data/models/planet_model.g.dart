// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanetModel _$PlanetModelFromJson(Map<String, dynamic> json) => PlanetModel(
      radius: (json['radius'] as num).toDouble(),
      speed: (json['speed'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$PlanetModelToJson(PlanetModel instance) =>
    <String, dynamic>{
      'radius': instance.radius,
      'speed': instance.speed,
      'distance': instance.distance,
    };
