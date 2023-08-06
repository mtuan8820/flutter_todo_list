import 'package:flutter/material.dart';

class ToDoTask extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  Function(bool?) checkTaskHandler;

  ToDoTask({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkTaskHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: checkTaskHandler,
            ),
            Text(taskTitle),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
