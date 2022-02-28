import 'package:equatable/equatable.dart';
import 'package:system/feature/domain/entities/planet_entitiy.dart';

class PlanetarySystemEntity extends Equatable{
  final List<PlanetEntity> planets;

  const PlanetarySystemEntity(this.planets);

  @override
  List<Object?> get props => planets;

}