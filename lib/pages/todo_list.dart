import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TododList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titel: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-todo-screen')
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
