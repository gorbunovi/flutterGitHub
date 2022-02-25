
import '../../data_package.dart';

abstract class PlanetarySystemService{
  Future<List<Planet>> getPlanets();
  Future<List<Planet>> AddNewPlanet(Planet planet);
  Future<PlanetarySystem> SavePlanetaryStstem(PlanetarySystem planetarySystem);
}