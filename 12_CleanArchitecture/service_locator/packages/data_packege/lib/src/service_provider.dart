
import 'package:data_packege/data_packege.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider{
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize(){
    _getIt.registerLazySingleton<Counter>(() => Counter());
  }
}