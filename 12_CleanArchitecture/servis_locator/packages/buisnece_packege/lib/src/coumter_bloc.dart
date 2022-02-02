

import 'dart:async';

import 'package:data_packege/data_packege.dart';

enum CounterEvent{event_increment, event_dicrement}

class CounterBloc{
  final Counter count;

  final _inputEventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<int>();
  Stream<int> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(CounterEvent event){
    if(event == CounterEvent.event_increment) {
      int _newCount = count.counter + 1;
      count.updateCounter(_newCount);
    }
    else if(event == CounterEvent.event_dicrement) {
      int _newCount = count.counter - 1;
      count.updateCounter(_newCount);
    }
    else throw Exception('Wrong event type');

    _outputStateController.sink.add(count.counter);
  }

  CounterBloc({required this.count}){
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose(){
    _inputEventController.close();
    _outputStateController.close();
  }
}