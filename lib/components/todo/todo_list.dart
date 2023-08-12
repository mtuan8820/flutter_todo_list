import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:todo_list/components/todo/todo_task.dart';

GlobalKey<_ToDoListState> globalKey = GlobalKey();

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List toDoList = [];
  final LocalStorage storage = new LocalStorage('todo_list.json');
  bool initialized = false;

  _saveToStorage() async {
    await storage.ready;
    storage.setItem('todos', jsonEncode(toDoList));
    // print(jsonDecode(storage.getItem('todos')));
  }

  void checkTaskHandler(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
      _saveToStorage();
    });
  }

  void createNewTask(title) {
    if( title == "") return;
    setState(() {
      toDoList.add([title, false]);
      _saveToStorage();
    });
  }

  void deleteTask(index) {
    setState(() {
      toDoList.removeAt(index);
      _saveToStorage();
    });
  }

  void editTask(title,index){
      if( title == "") return;
      setState(() {
      toDoList[index] = [title, false,];
      _saveToStorage();
    });
  }

  // @override
  // void initState(){
  //   // init the list on first time using app
  //   if(storage.getItem('todos') == null){
  //     print(storage.getItem('todos'));
  //     toDoList = [
  //       ['Read Docs',false,],
  //       ['Learn new things',false,],
  //     ];
  //   }
  //   else {
  //     toDoList = jsonDecode(storage.getItem('todos'));
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: storage.ready,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        var items = storage.getItem('todos');
        if (items != null) {
          toDoList = jsonDecode(items);
        }
        return ReorderableListView.builder(
          buildDefaultDragHandles: false,
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ReorderableDragStartListener(
              key: ValueKey(index),
              child: ToDoTask(
                taskTitle: toDoList[index][0],
                isChecked: toDoList[index][1],
                checkTaskHandler: (event) => checkTaskHandler(index),
                deleteTaskHandler: (context) => deleteTask(index),
                editTaskHandler: (title) => editTask(title,index),
              ),
              index: index,
            );
          },
          onReorder: (oldIndex, newIndex) {
            if (newIndex > oldIndex) newIndex--;
            final item = toDoList.removeAt(oldIndex);
            toDoList.insert(newIndex, item);
          },
        );
      },
    );
  }
}


// return ListView.builder(
//       itemCount: toDoList.length,
//       itemBuilder: (context, index) {
//         return ToDoTask(
//           taskTitle: toDoList[index][0],
//           isChecked: toDoList[index][1],
//           checkTaskHandler: (event) => checkTaskHandler(index),
//           deleteTaskHandler: (context) => deleteTask(index),
//         );
//       },
//     );
