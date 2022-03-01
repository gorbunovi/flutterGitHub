
import 'package:data_package/data_package.dart';

class PlanetarySystemEntity extends PlanetarySystem{
  final List<Planet> planets;

  PlanetarySystemEntity(this.planets) : super(planets);
}