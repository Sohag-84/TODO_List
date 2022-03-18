import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

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
              const TextField(
                textAlign: TextAlign.center,
                autofocus: true,//it helps us to show automatic keyboard
                decoration: InputDecoration(
                  border:  UnderlineInputBorder(
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                //style: raisedButtonStyle,
                onPressed: () { },
                child: const Text('Add',style: TextStyle(fontSize: 20),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
