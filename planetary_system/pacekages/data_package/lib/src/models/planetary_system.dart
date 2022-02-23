
import 'package:data_package/src/models/planet.dart';

class PlanetarySystem{
  late final List<Planet> planets;

  void addPlanet(Planet planet){
    planets.add(planet);
  }
}