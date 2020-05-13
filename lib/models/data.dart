import 'package:flutter/material.dart';
import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> currentTasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  void addTask(Task task) {
    currentTasks.add(task);
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    currentTasks[index].toggleDone();
    notifyListeners();
  }
}
