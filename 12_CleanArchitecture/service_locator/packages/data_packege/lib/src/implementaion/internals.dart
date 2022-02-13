
import 'package:data_packege/src/api/services.dart';
import 'package:model_package/src/counter/counter_data.dart';


class DummyCounterService implements CounterService{
  CounterData _counterData = CounterData(counter: 0);

  @override
  Future<int> getCounter() async {
    return _counterData.counter;
    throw UnimplementedError();
  }

  @override
  Future<CounterData> decrementCounter() async {
    _counterData =  await CounterData(counter: _counterData.counter - 1);
   return _counterData;
    throw UnimplementedError();
  }

  @override
  Future<CounterData> incrementCounter() async {
    _counterData =  await CounterData(counter: _counterData.counter + 1);
    return _counterData;
    throw UnimplementedError();
  }

}