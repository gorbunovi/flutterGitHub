import 'package:flutter/cupertino.dart';

class Todo {
  final UniqueKey id;
  String task;
  bool isDone;

  Todo({this.id, this.task, this.isDone});
}