import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todo = [];

  List<Todo> get todo => _todo;

  List<Todo> getTodoListIsDone(String todoTask) {
    List<Todo> _todoIsDone =
        _todo.where((element) => element.isDone == true).toList();
    if (todoTask.isEmpty) return _todoIsDone;
    return _todoIsDone
        .where((element) => element.task.startsWith(todoTask))
        .toList();
  }

  void add(Todo newTodo) {
    _todo.add(newTodo);
    notifyListeners();
    print(_todo);
  }

  isDone(UniqueKey id) {
    Todo _findTodo = _todo.firstWhere((element) => element.id == id);
    _findTodo.isDone = !_findTodo.isDone;
    notifyListeners();
  }

  removeTast(UniqueKey id) {
    _todo.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
