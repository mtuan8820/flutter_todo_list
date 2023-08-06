import 'package:flutter/material.dart';
import 'package:todo_list/components/todo/todo_input.dart';
import 'package:todo_list/components/todo/todo_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    const toDoInput = ToDoInput();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Column(
          children: [
            ToDoInput(),
            ToDoList()
          ],
        ),
      ),
    );
  }
}
