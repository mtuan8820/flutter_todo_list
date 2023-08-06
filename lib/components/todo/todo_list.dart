import 'package:flutter/material.dart';
import 'package:todo_list/components/todo/todo_task.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List toDoList = [
    [
      "sleep",
      false,
    ],
    [
      "wake up",
      false,
    ],
    [
      "code",
      false,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: toDoList.length,
      itemBuilder: (context, index) {
        return ToDoTask(
          taskTitle: toDoList[index][0],
          isChecked: toDoList[index][1],
          checkTaskHandler: (p0){},
        );
      },
    );
  }
}
