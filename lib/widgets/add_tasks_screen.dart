import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTasksScreen extends StatelessWidget {
  final Function onAdd;
  AddTasksScreen({super.key, required this.onAdd});

  final myController = TextEditingController();

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
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: myController,
            ),
            TextButton(
              onPressed: () {
                onAdd(myController.text);
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.lightBlueAccent),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
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
