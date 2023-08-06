import 'package:flutter/material.dart';
import 'package:todo_list/components/todo/todo_task.dart';

class ToDoList extends StatelessWidget {
  ToDoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      return ListView(
        children: <Widget>[
          ToDoTask(
            taskTitle: 'Task 1',
            isChecked: false,
            checkTaskHandler: (p0) => {},
          ),
          ToDoTask(
            taskTitle: 'Task 2',
            isChecked: false,
            checkTaskHandler: (p0) => {},
          ),
          ToDoTask(
            taskTitle: 'Task 3',
            isChecked: false,
            checkTaskHandler: (p0) => {},
          ),
          
        ],
      );
  }
}
