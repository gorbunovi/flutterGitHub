
import 'package:data_package/data_package.dart';

class PlanetarySystemEntity extends PlanetarySystem{

  PlanetarySystemEntity(List<Planet> planets) : super(planets);
  List<PlanetEntity> get planetsEntity {
    return planets.map((e){
      return PlanetEntity(
        radius: e.radius,
        distance: e.distance,
        speed: e.speed,
      );
    }).toList();
  }
}

class PlanetEntity extends Planet{
  final double? radius;
  final double? speed;
  final double? distance;

  PlanetEntity({this.radius, this.speed, this.distance});
}