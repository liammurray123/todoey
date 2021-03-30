import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Model Imports
import 'package:todoey_flutter/models/list_class.dart';
// Widget Imports
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: (context, taskList, child) {
        return ListView.builder(
          itemBuilder: (BuildContext, index) {
            final task = taskList.tasks[index];

            return GestureDetector(
              onLongPress: () {
                taskList.deleteTask(index);
              },
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskList.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskList.taskCount,
        );
      },
    );
  }
}
