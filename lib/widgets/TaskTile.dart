import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskTileCheckBox(isChecked, checkBoxCallBack),
    );
  }
}

class TaskTileCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckBoxState;
  TaskTileCheckBox(this.isChecked, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckBoxState,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
