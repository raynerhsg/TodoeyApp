import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callback;
  final Function longPressCallback;
  TaskTileWidget(
      {this.isChecked, this.taskTitle, this.callback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callback,
      ),
    );
  }
}
