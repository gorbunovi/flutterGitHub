import 'dart:convert';

import 'package:data_package/data_package.dart';
import 'package:data_package/src/api/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlanetarySystemRepository extends PlanetarySystemService{

  final PlanetarySystem planetarySystem = PlanetarySystem();
  SharedPreferences? _sharedPreferences;



  @override
  Future<List<Planet>> AddNewPlanet(Planet planet) async{
    planetarySystem.addPlanet(planet);
    String json = JsonEncoder(planetarySystem);
    List<Planet> planets = planetarySystem.planets;
    return planets;
  }

  @override
  Future<PlanetarySystem> SavePlanetaryStstem(PlanetarySystem planetarySystem) async{
    val json = JsonEncoder(planetarySystem);
  }

  @override
  Future<List<Planet>> getPlanets() async{
    List<Planet> planets = planetarySystem.planets;
    return planets;
  }



}