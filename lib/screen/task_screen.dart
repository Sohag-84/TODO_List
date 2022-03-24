import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/widgets/task_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => const AddTaskScreen()
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30,top: 60,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CircleAvatar(
                    child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: height*0.01,),
                const Text('Todoey',style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                 Text(
                   '${Provider.of<TaskData>(context).taskCount} Tasks',
                   style: const TextStyle(color: Colors.white,fontSize: 17),
                 ),
                SizedBox(height: height*0.02,)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child:const TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}



