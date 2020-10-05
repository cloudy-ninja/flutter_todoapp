import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleCheckBoxState;

  TaskTile({this.isChecked, this.title, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBoxState,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
