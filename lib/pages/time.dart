import 'package:flutter/material.dart';
import 'package:superflow/widgets/rail.dart';

class TimePage extends StatefulWidget {
  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Rail(3),
        ],
      ),
    );
  }
}
