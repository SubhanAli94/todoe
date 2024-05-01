import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w700),
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                print('');
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
