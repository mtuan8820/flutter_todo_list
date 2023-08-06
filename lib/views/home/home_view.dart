import 'package:flutter/material.dart';
import 'package:todo_list/components/todo/todo_input.dart';
import 'package:todo_list/components/todo/todo_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _textEditingController = TextEditingController();

  void createNewTask() {
    // print(_textEditingController.text);
    // need to pass _textEditingController.text to list to update the array
    globalKey.currentState?.createNewTask(_textEditingController.text);
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text('To-Do List'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: <Widget>[
              ToDoInput(
                controller: _textEditingController,
                onSubmit: createNewTask,
              ),
              Expanded(
                child: SizedBox(
                  child: ToDoList(
                    key: globalKey,
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
