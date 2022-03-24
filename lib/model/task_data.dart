import 'package:flutter/foundation.dart';
import 'package:todo_list/model/task_model.dart';

class TaskData extends ChangeNotifier{
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Apple'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Banana'),
    Task(name: 'Buy Pine Apple'),
  ];

  //for getting task count
  int get taskCount{
    return tasks.length;
  }
  //for changing data
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}