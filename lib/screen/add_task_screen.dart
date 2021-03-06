import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_data.dart';
class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);


  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0,right: 25,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
               const Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue,fontSize: 25),
              ),
               TextField(
                textAlign: TextAlign.center,
                autofocus: true,//it helps us to show automatic keyboard
                // decoration: const InputDecoration(
                //   border:  UnderlineInputBorder(
                //   ),
                // ),
                onChanged: (value){
                  newTaskTitle = value;
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 20),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
