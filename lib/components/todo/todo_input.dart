import 'package:flutter/material.dart';

class ToDoInput extends StatelessWidget{
  final controller;
  String labeltext = 'Create new task here';
  void changeLabelText(String str){
    this.labeltext = str;
  }
  VoidCallback onSubmit;
  ToDoInput({
    super.key,
    required this.controller,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labeltext ,
        ),
        onSubmitted: (value){onSubmit();},
      ),
    );
  }
}