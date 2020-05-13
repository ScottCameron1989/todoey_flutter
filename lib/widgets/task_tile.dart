import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
//  final Function onChecked;

  TaskTile({this.title, this.isChecked = false, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
