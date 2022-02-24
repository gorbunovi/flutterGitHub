import 'package:model_package/model_package.dart';

abstract class CounterService{
  Future<CounterData> getCounter();
  Future<CounterData> incrementCounter();
  Future<CounterData> decrementCounter();
}