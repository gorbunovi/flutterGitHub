
import 'dart:async';

import 'package:module_data/module_data.dart';

class MainBloc{
  final HealthService healthService;
  final StreamController<int> _eventController = StreamController();

  MainBloc({required this.healthService});

  void add(int event){
    if (_eventController.isClosed) return;
    _eventController.add(event);
  }

  void disponse(){
    _eventController.close();
  }
}