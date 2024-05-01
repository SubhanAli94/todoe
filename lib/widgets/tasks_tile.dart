import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final Function onPressed;

  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Transform.scale(
        scale: 1.2,
        child: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) => onPressed(),
        ),
      ),
    );
  }
}
