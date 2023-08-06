import 'package:flutter/material.dart';

class ToDoInput extends StatelessWidget{
  const ToDoInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const TextField(
        decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter To Do',
        ),
      ),
    );
  }
}