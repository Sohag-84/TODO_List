import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
                //taskTitle: Provider.of<TaskData>(context).tasks[index].name,
                //taskTitle: taskData.tasks[index].name,
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (bool? checkboxState) {
                  taskData.updateTask(task);
                },
              longPressCallback: (){
                  taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}