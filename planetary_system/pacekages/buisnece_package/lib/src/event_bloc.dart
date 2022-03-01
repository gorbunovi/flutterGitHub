

abstract class PlanetEvent {}
class GetPlanets extends PlanetEvent {}
class AddNewPlanet extends PlanetEvent {
  final double radius;
  final double speed;
  final double distance;

  AddNewPlanet({required this.radius, required this.speed, required this.distance});
}