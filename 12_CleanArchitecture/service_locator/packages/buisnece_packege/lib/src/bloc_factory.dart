import 'package:buisnece_packege/buisnece_packege.dart';
import 'package:data_packege/data_packege.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory<CounterBloc>(
      () => CounterBloc(),
    );
  }
}
