

import 'package:flutter/material.dart';

import 'task.dart';
class TaskData extends ChangeNotifier{
  List<Task>tasks=[
    Task(name: 'go shopping'),
    Task(name: 'bay gift'),
    Task(name: 'repair the car'),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();

  }
  void updateTask(Task task){
    task.danechange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}