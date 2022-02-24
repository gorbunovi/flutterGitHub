import 'package:buisnece_package/src/planet_bloc.dart';
import 'package:buisnece_package/src/planetary_system_bloc.dart';
import 'package:data_package/data_package.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    // _getIt.registerFactory<PlanetBloc>(
    //   () => PlanetBloc(
    //     planetarySystem: ServiceProvider.instance.get<PlanetarySystem>(),
    //     planet: ServiceProvider.instance.get<Planet>(),
    //   ),
    // );
    _getIt.registerFactory<PlanetarySystemBloc>(
      () => PlanetarySystemBloc(
        planetarySystem: ServiceProvider.instance.get<PlanetarySystem>(),
      ),
    );
  }
}
