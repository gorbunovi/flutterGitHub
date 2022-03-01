// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Planet _$PlanetFromJson(Map<String, dynamic> json) => Planet(
      radius: (json['radius'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PlanetToJson(Planet instance) => <String, dynamic>{
      'radius': instance.radius,
      'speed': instance.speed,
      'distance': instance.distance,
    };
