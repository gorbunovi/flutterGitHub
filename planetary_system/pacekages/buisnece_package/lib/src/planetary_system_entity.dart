
import 'package:data_package/data_package.dart';

class PlanetarySystemEntity extends PlanetarySystem{

  PlanetarySystemEntity(List<Planet> planets) : super(planets);
  List<PlanetEntity> get planetsEntity {
    return planets.map((e) => e as PlanetEntity).toList();
  }
}

class PlanetEntity extends Planet{
}