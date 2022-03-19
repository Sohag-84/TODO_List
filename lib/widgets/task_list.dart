import 'package:flutter/material.dart';
import 'package:todo_list/model/task_model.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: 'By milk'),
    Task(name: 'Buy Apple'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Banana'),
    Task(name: 'Buy Pine Apple'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                tasks[index].isDone = checkboxState!;
              });
            }
        );
      },
      itemCount: tasks.length,
      );
  }
}