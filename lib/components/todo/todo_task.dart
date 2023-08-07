// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoTask extends StatefulWidget {
  final String taskTitle;
  final bool isChecked;
  Function(bool?) checkTaskHandler;
  Function(BuildContext?) deleteTaskHandler;
  Function(String?) editTaskHandler;

  ToDoTask({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkTaskHandler,
    required this.deleteTaskHandler,
    required this.editTaskHandler,
  });

  @override
  State<ToDoTask> createState() => _ToDoTaskState();
}

class _ToDoTaskState extends State<ToDoTask> {
  bool isEditable=false;
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
            value: widget.isChecked,
            onChanged: widget.checkTaskHandler,
          ),
          Expanded(
            child:
            !isEditable?
            Text(
              widget.taskTitle,
              style: TextStyle(
                  decoration: widget.isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ): 
            TextFormField(
              initialValue: widget.taskTitle,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (value){
                print(value);
                widget.editTaskHandler(value);
                isEditable = false;
              },
            )
          )
          ,
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => setState(() {
              isEditable = true;
            }),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => widget.deleteTaskHandler(context),
          ),
        ],
      ),
    );
  }
  
}
