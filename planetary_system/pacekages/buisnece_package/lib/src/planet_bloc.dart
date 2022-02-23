import 'package:data_package/data_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PlanetEvent {}
class AddNewPlanet extends PlanetEvent {}

class PlanetBloc extends Bloc<PlanetEvent, Planet>{
  final Planet planet;
  PlanetBloc({required this.planet}) : super(ServiceProvider.instance.get<Planet>());

}

