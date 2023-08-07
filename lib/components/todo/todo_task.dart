import 'package:flutter/material.dart';

class ToDoTask extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  Function(bool?) checkTaskHandler;
  Function(BuildContext?) deleteTaskHandler;

  ToDoTask({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkTaskHandler,
    required this.deleteTaskHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: checkTaskHandler,
          ),
          Text(
            taskTitle,
            style: TextStyle(
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => deleteTaskHandler(context),
          ),
        ],
      ),
    );
  }
}
