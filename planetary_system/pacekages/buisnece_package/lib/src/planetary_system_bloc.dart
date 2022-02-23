import 'package:data_package/data_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PlanetEvent {}
class GetPlanets extends PlanetEvent {}
class AddNewPlanet extends PlanetEvent {}

class PlanetarySystemBloc extends Bloc<PlanetEvent, Planet>{
  final PlanetarySystem planetarySystem;
  PlanetarySystemBloc({required this.planetarySystem}) : super(ServiceProvider.instance.get<Planet>()){

    on<GetPlanets>((event, emit){
      emit(planetarySystem.planets);
    });

    on<AddNewPlanet>((event, emit){
      planetarySystem.addPlanet(state);
      emit()
    });

  }

}