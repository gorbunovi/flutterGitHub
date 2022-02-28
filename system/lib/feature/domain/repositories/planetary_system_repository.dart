
import 'package:dartz/dartz.dart';
import 'package:system/core/error/failure.dart';
import 'package:system/feature/domain/entities/planet_entitiy.dart';
import 'package:system/feature/domain/entities/planetary_system_entitiy.dart';

abstract class PlanetarySystemRepository {
  Future<Either<Failure, List<PlanetEntity>>> getAllPlanets();
  Future<Either<Failure, void>> addNewPlanet(PlanetEntity planet);
}