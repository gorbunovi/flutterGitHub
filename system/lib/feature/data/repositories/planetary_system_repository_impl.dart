

import 'package:dartz/dartz.dart';
import 'package:system/core/error/failure.dart';
import 'package:system/feature/data/datasource/planetary_system_data_source.dart';
import 'package:system/feature/domain/entities/planet_entitiy.dart';
import 'package:system/feature/domain/entities/planetary_system_entitiy.dart';
import 'package:system/feature/domain/repositories/planetary_system_repository.dart';

class PlanetarySystemRepositoryImpl extends PlanetarySystemRepository {

  final PlanetarySystemDataSource planetarySystemDataSource;

  PlanetarySystemRepositoryImpl(this.planetarySystemDataSource);

  @override
  Future<Either<Failure, void>> addNewPlanet(PlanetEntity planet) {
    // TODO: implement addNewPlanet
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PlanetEntity>>> getAllPlanets() async{
    return await _getPlanets((){
      return
    });
  }

}