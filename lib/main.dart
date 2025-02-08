import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superflow/widgets/tasks/save_task.dart';
import 'package:superflow/pages/add_todo.dart';
import 'package:superflow/pages/todo_list.dart';
import 'package:superflow/pages/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Superflow',
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        'todo-screen': (_) => const TodoList(),
        '/add-todo-screen': (_) => AddTodo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

  
