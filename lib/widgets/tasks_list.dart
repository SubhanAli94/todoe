import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoe/widgets/tasks_tile.dart';
import '../models/tasks.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(text: 'Hello, World', isChecked: false),
    Task(text: 'Hello, World1', isChecked: false),
    Task(text: 'Hello, World2', isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isChecked,
            text: tasks[index].text,
            onPressed: () {
              setState(() {
                tasks[index].toggleCheckBox();
              });
            });
      },
    );
  }
}
