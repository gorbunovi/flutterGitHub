import 'dart:convert';

import 'package:data_package/data_package.dart';
import 'package:data_package/src/api/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlanetarySystemRepository extends PlanetarySystemService {
  final PlanetarySystem planetarySystem = PlanetarySystem([]);
  final SharedPreferences _sharedPreferences;


  PlanetarySystemRepository(this._sharedPreferences);

  @override
  Future<List<Planet>> AddNewPlanet(Planet planet) async {
    planetarySystem.addPlanet(planet);
    SavePlanetaryStstem(planetarySystem);
    List<Planet>? planets = planetarySystem.planets;
    return planets;
  }

  @override
  Future<PlanetarySystem> SavePlanetaryStstem(
    PlanetarySystem planetarySystem) async {
    final String json = jsonEncode(planetarySystem);
    _sharedPreferences.setString('system', json);
    return planetarySystem;
  }

  @override
  List<Planet> getPlanets() {
    try{
      PlanetarySystem system = PlanetarySystem.fromJson(jsonDecode(_sharedPreferences.getString('system')!));
      return system!.planets;
    }catch(e){
      return [];
    }


  }
}
