import 'package:data_package/data_package.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider{
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize(){
    _getIt.registerLazySingleton<PlanetarySystem>(() => PlanetarySystem([]));
    _getIt.registerLazySingleton<Planet>(() => Planet());
  }
}