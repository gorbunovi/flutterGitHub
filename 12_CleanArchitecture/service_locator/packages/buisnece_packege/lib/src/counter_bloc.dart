
import 'package:data_packege/data_packege.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// enum CounterEvent{event_increment, event_decrement}

abstract class CounterEvent {}
class CounterIncrement extends CounterEvent {}
class CounterDecrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int>{
  final Counter counter;

  CounterBloc({required this.counter}) : super(0){

    on<CounterIncrement>((event, emit){
      counter.updateCounter(state + 1);
      emit(counter.counter);
    });
    on<CounterDecrement>((event, emit){
      counter.updateCounter(state + 1);
      emit(counter.counter);
    });
  }
}
