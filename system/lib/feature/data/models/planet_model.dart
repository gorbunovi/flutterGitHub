import 'package:system/feature/domain/entities/planet_entitiy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'planet_model.g.dart';

@JsonSerializable()
class PlanetModel extends PlanetEntity {
  final double radius;
  final double speed;
  final double distance;


  const PlanetModel(
      {required this.radius,
        required this.speed,
        required this.distance,
      }): super(
      radius: radius,
      speed: speed,
      distance: distance);

  factory PlanetModel.fromJson(Map<String, dynamic> json) => _$PlanetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetModelToJson(this);
}
