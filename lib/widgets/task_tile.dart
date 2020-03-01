import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final task = TextEditingController(text: 'task');
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Text',
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (checked) {
          isChecked = checked;
        },
      ),
    );
  }
}
