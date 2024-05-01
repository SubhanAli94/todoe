import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task_model.dart';
import 'package:todoe/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskModel(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
