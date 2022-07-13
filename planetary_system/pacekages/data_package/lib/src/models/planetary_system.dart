
import 'package:data_package/src/models/planet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'planetary_system.g.dart';

@JsonSerializable()
class PlanetarySystem{
  final List<Planet> planets;

  PlanetarySystem(this.planets);

  void addPlanet(Planet planet) => planets.add(planet);

  factory PlanetarySystem.fromJson(Map<String, dynamic> json) => _$PlanetarySystemFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetarySystemToJson(this);
}