import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile_widget.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modal/task_data.dart';

class TaskListWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        if (taskData.tasks.isEmpty) {
          return Center(
            child: Text(
              'Click the button to add new tasks!',
              style: TextStyle(fontSize: 16),
            ),
          );
        } else {
          return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (_, index) {
              final task = taskData.tasks[index];
              return TaskTileWidget(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  longPressCallback: () {
                    taskData.removeTask(task);
                  },
                  callback: (bool value) {
                    taskData.updateTask(task);
                  });
            },
          );
        }
      },
    );
  }
}
