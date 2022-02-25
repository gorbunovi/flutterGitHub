
import 'package:data_package/src/models/planet.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'planetary_system.g.dart';

@JsonSerializable()
class PlanetarySystem{
  late final List<Planet>? planets;

  PlanetarySystem({required this.planets});

  void addPlanet(Planet planet) => planets;

  factory PlanetarySystem.fromJson(Map<String, dynamic> json) => _$PlanetarySystemFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetarySystemToJson(this);
}