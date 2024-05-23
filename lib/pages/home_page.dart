import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

List todoList = [
  ['Learn flutter', false],
  ['Drink coffee', false],
];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar (
        title: const Text(
          'Todo App'
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext conterxt, index) {
          return TodoList(
            taskName: todoList[index][0],
          );
        }

      )
    );
  }
}