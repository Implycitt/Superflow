import 'package:flutter/material.dart';
import 'package:superflow/widgets/card.dart';
import 'package:superflow/widgets/rail.dart';
import 'package:superflow/pages/todo_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            child: Rail(0),
          ),
          Container(
            child: Card(child: CardButton(cardName: 'TODO', page: TodoList()))
          ),
        ],
      ),
    );
  }
}
