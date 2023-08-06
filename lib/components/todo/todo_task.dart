import 'package:flutter/material.dart';

class ToDoTask extends StatelessWidget{
  const ToDoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Text('task'),
        decoration: BoxDecoration(color: Colors.white),
      )
    );
  }
}