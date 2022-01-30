

import 'package:module_data/src/api/services.dart';
import 'package:get_it/get_it.dart';

import 'implementaion/dummy_implementation.dart';

class ServiceProvider{
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize(){
    _getIt.registerLazySingleton<HealthService>(
      () => DumnService()
    );
  }
}