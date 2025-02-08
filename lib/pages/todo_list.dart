import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superflow/widgets/tasks/save_task.dart';
import 'package:superflow/widgets/rail.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add-todo-screen');
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              Rail(),
            ],
          ),
        ),
      ),
    );
  }
}
