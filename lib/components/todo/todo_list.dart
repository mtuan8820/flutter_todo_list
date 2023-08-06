import 'package:flutter/material.dart';
import 'package:todo_list/components/todo/todo_task.dart';

GlobalKey<_ToDoListState> globalKey = GlobalKey();

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
      true,
    ],
    [
      "code",
      true,
    ],
    [
      "code",
      true,
    ],
    [
      "code",
      false,
    ],
    [
      "code",
      false,
    ],
    [
      "code",
      false,
    ],
  ];

  void checkTaskHandler(int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask(title){
    setState(() {
      toDoList.add([title, false]);
    });
  }

  void deleteTask(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: toDoList.length,
      itemBuilder: (context, index) {
        return ToDoTask(
          taskTitle: toDoList[index][0],
          isChecked: toDoList[index][1],
          checkTaskHandler: (event) => checkTaskHandler(index),
          deleteTaskHandler: (context) => deleteTask(index),
        );
      },
    );
  }
}
