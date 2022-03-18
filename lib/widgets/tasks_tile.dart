import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('This is title'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {

        },
      ),
    );
  }
}