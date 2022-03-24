import 'package:flutter/foundation.dart';
import 'package:todo_list/model/task_model.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'By milk'),
    Task(name: 'Buy Apple'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Banana'),
    Task(name: 'Buy Pine Apple'),
  ];
}