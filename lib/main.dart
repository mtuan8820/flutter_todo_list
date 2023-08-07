import 'package:flutter/material.dart';
import 'package:todo_list/views/home/home_view.dart';
import 'package:localstorage/localstorage.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

