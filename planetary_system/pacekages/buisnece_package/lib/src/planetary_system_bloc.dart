import 'package:data_package/data_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_bloc.dart';



class PlanetarySystemBloc extends Bloc<PlanetEvent, PlanetarySystem>{
  final PlanetarySystem planetarySystem;
  PlanetarySystemBloc({required this.planetarySystem}) : super(ServiceProvider.instance.get<PlanetarySystem>()){

    on<GetPlanets>((event, emit){
      emit(state);
    });
  }
}