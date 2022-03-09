import 'package:buisnece_package/src/planetary_system_entity.dart';
import 'package:data_package/data_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_bloc.dart';



class PlanetarySystemBloc extends Bloc<PlanetEvent, PlanetarySystemEntity>{
  final PlanetarySystemEntity planetarySystem;
  PlanetarySystemBloc({required this.planetarySystem}) : super(ServiceProvider.instance.get<PlanetarySystemEntity>()){

    on<GetPlanets>((event, emit){
      emit(planetarySystem);
    });

    on<AddNewPlanet>((event, emit){
      planetarySystem.addPlanet(Planet(speed: event.speed, distance: event.distance, radius: event.radius));
      emit(planetarySystem);
    });

  }
}

