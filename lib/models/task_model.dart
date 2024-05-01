import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoe/models/tasks.dart';

class TaskModel extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String text) {
    _tasks.add(Task(text: text, isChecked: false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
