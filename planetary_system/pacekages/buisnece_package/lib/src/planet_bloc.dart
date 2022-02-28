import 'package:data_package/data_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_bloc.dart';



class PlanetBloc extends Bloc<PlanetEvent, Planet>{
  final Planet planet;
  final PlanetarySystem planetarySystem;
  PlanetBloc({required this.planet, required this.planetarySystem}) : super(ServiceProvider.instance.get<Planet>()){
    on<AddNewPlanet>((event, emit){
      planetarySystem.addPlanet(state);
    });
  }
}

