
import 'package:json_annotation/json_annotation.dart';
import 'package:system/feature/data/models/planet_model.dart';
import 'package:system/feature/domain/entities/planetary_system_entitiy.dart';

part 'planetary_system_model.g.dart';

@JsonSerializable()
class PlanetarySystemModel extends PlanetarySystemEntity{
  final List<PlanetModel> planets;

  PlanetarySystemModel(this.planets): super(planets);

  factory PlanetarySystemModel.fromJson(Map<String, dynamic> json) => _$PlanetarySystemModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetarySystemModelToJson(this);
}