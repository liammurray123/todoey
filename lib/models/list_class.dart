import 'package:flutter/material.dart';
import 'task_model.dart';
import 'dart:collection';
import 'dart:convert';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    // adding an underscore, makes the variable private, so only children/parts of this class (TaskList) can use it
  ];

  // This allows _tasks to be read, but not edited
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    _tasks.add(
      Task(name: taskTitle),
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
