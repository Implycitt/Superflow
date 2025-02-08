import 'package:flutter/material.dart';
import 'package:superflow/pages/home.dart';
import 'package:superflow/pages/todo_list.dart';

class Rail extends StatefulWidget {
  const Rail({super.key});
  State<Rail> createState() => RailState();
}

class RailState extends State<Rail> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final List<Widget> pages = [HomePage(), TodoList()];

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
          Navigator.push(context, MaterialPageRoute(builder: (context) => pages[_selectedIndex]));
        });
      },
      labelType: labelType,
      groupAlignment: 0,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(Icons.home_outlined),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.add_task),
          selectedIcon: Icon(Icons.add_task_outlined),
          label: Text('Todo'),
        ),
      ],
    );
  }
}
