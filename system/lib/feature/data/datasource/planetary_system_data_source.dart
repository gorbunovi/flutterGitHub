

import 'package:shared_preferences/shared_preferences.dart';
import 'package:system/feature/data/models/planet_model.dart';
import 'package:system/feature/data/models/planetary_system_model.dart';

abstract class PlanetarySystemDataSource {
  /// Gets the cached [List<PersonModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  Future<List<PlanetModel>> getAllPlanets();
  Future<void> savePlanetarySystem(PlanetarySystemModel planetarySystem);
  Future<void> addNewPlanet(PlanetModel planet);
}

class PlanetarySystemDataSourceImpl implements PlanetarySystemDataSource{
  final SharedPreferences sharedPreferences;

  PlanetarySystemDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> addNewPlanet(PlanetModel planet) {
    // TODO: implement addNewPlanet
    throw UnimplementedError();
  }

  @override
  Future<List<PlanetModel>> getAllPlanets() {
    // TODO: implement getAllPlanets
    throw UnimplementedError();
  }

  @override
  Future<void> savePlanetarySystem(PlanetarySystemModel planetarySystem) {
    // TODO: implement savePlanetarySystem
    throw UnimplementedError();
  }

}