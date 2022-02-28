
import 'package:json_annotation/json_annotation.dart';

part 'planet.g.dart';

@JsonSerializable()
class Planet{
  final radius;
  final speed;
  final distance;

  Planet({this.radius, this.speed, this.distance});

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetToJson(this);
}