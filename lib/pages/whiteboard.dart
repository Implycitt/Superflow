import 'package:flutter/material.dart';
import 'package:superflow/widgets/rail.dart';

class WhiteboardPage extends StatefulWidget {
  @override
  State<WhiteboardPage> createState() => _WhiteboardPageState();
}

class _WhiteboardPageState extends State<WhiteboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            child: Rail(2),
          ),
        ],
      ),
    );
  }
}
