
import 'package:data_packege/data_packege.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// enum CounterEvent{event_increment, event_decrement}

abstract class CounterEvent {}
class CounterIncrement extends CounterEvent {}
class CounterDecrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, Counter>{

  CounterBloc() : super(ServiceProvider.instance.get<Counter>()){
    on<CounterIncrement>((event, emit){
      state.updateCounter(state.counter + 1);
      emit(state);
    });
    on<CounterDecrement>((event, emit){
      state.updateCounter(state.counter + 1);
      emit(state);
    });
  }
}
