
import 'package:data_packege/data_packege.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// enum CounterEvent{event_increment, event_decrement}

abstract class CounterEvent {}
class CounterIncrement extends CounterEvent {}
class CounterDecrement extends CounterEvent {}
class CounterGet extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int>{
  final DummyCounterService counter;

  CounterBloc({required this.counter}) : super(0) {

    on<CounterIncrement>((event, emit) async{
      final resault = await counter.incrementCounter();
      emit(resault.counter);
    });
    on<CounterDecrement>((event, emit)async{
      final resault = await counter.decrementCounter();
      emit(resault.counter);
    });
    on<CounterGet>((event, emit)async{
      final resault = await counter.getCounter();
      emit(resault.counter);
    });
  }
}
