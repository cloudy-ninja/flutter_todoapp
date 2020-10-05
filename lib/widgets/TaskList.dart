import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'TaskTile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy egg'),
    Task(title: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].title,
          isChecked: tasks[index].isDone,
          toggleCheckBoxState: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
