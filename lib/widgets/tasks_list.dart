import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/widgets/tasks_tile.dart';
import '../models/task_model.dart';
import '../models/tasks.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModel>(
      builder: (BuildContext context, TaskModel taskModel, Widget? child) {
        return ListView.builder(
          itemCount: taskModel.taskCount,
          itemBuilder: (context, index) {
            final task = taskModel.tasks[index];
            return TaskTile(
              isChecked: task.isChecked,
              text: task.text,
              onPressed: () {
                taskModel.updateTask(task);
              },
              onLongPress: () {
                taskModel.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
