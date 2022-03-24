import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              // setState(() {
              //   widget.tasks[index].isDone = checkboxState!;
              // });
            }
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
      );
  }
}