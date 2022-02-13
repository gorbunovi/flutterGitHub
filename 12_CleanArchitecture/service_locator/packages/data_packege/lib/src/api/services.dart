import 'package:model_package/model_package.dart';

abstract class CounterService{
  Future<int> getCounter();
  Future<CounterData> incrementCounter();
  Future<CounterData> decrementCounter();
}