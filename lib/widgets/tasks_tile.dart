import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  //const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;
  void callFunction (bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text('This is title',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckedbox(isChecked,callFunction),
    );
  }
}

class TaskCheckedbox extends StatelessWidget {

  final bool chechboxCheck;
  final Function function;
  TaskCheckedbox(this.chechboxCheck,this.function);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: chechboxCheck,
      onChanged: (bool? value) {
        function(value);
      },
    );
  }
}



