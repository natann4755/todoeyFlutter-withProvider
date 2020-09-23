import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class ListTasks extends ChangeNotifier{
  List <Task> _tasks = [
    Task(title: "a"),
    Task(title: "b"),
    Task(title: "c"),
    Task(title: "d"),
  ];

  void updateList (String newTask){
    _tasks.add(Task(title: newTask));
    notifyListeners();
  }
  UnmodifiableListView get tasks {
    return UnmodifiableListView (_tasks);
  }

  int get getTasksCount {
    return _tasks.length;
  }

  void updateTask(Task task){
    task.done();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}