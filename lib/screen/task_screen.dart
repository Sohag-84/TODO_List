
import 'package:flutter/material.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: const EdgeInsets.only(left: 30,top: 60,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const CircleAvatar(
                child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            SizedBox(height: height*0.03,),
            const Text('Todoey',style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            const Text('12 Tasks',style: TextStyle(color: Colors.white,fontSize: 17),),
           

          ],
        ),
      ),
    );
  }
}