import 'package:flutter/material.dart';
import 'package:todo_list/model/task_model.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList(this.tasks);


  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                widget.tasks[index].isDone = checkboxState!;
              });
            }
        );
      },
      itemCount: widget.tasks.length,
      );
  }
}