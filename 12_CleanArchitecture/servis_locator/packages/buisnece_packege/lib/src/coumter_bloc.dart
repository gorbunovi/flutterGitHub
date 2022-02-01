

import 'dart:async';

enum CounterEvent{event_increment, event_dicrement}

class CounterBloc{
  int _count = 0;

  final _inputEventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<int>();
  Stream<int> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(CounterEvent event){
    if(event == CounterEvent.event_increment) _count++;
    else if(event == CounterEvent.event_dicrement) _count--;
    else throw Exception('Wrong event type');

    _outputStateController.sink.add(_count);
  }

  CounterBloc(){
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose(){
    _inputEventController.close();
    _outputStateController.close();
  }
}