import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

import 'package:todoey_flutter/models/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.currentTasks[index].name,
              isChecked: taskData.currentTasks[index].isDone,
              checkboxCallback: (checkboxState) {
                taskData.toggleTaskDone(index);
              },
            );
          },
          itemCount: taskData.currentTasks.length,
        );
      },
    );
  }
}
