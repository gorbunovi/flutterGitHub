
import 'package:json_annotation/json_annotation.dart';

part 'planet.g.dart';

@JsonSerializable()
class Planet{
  final double? radius;
  final double? speed;
  final double? distance;

  Planet({ this.radius, this.speed, this.distance});

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetToJson(this);
}