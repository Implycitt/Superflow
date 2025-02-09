import 'package:flutter/material.dart';
import 'package:superflow/pages/home.dart';
import 'package:superflow/pages/todo_list.dart';
import 'package:superflow/pages/whiteboard.dart';
import 'package:superflow/pages/time.dart';

class Rail extends StatefulWidget {
  int selectedIndex;
  
  Rail(this.selectedIndex);

  @override
  State<Rail> createState() => RailState();
}

class RailState extends State<Rail> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final List<Widget> pages = [HomePage(), TodoList(), WhiteboardPage(), TimePage()];

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: (idx) {
        setState(() {
          widget.selectedIndex = idx;
          Navigator.push(context, MaterialPageRoute(builder: (context) => pages[widget.selectedIndex]));
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
        NavigationRailDestination(
          icon: Icon(Icons.draw),
          selectedIcon: Icon(Icons.draw_outlined),
          label: Text('Whiteboard'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.access_alarm),
          selectedIcon: Icon(Icons.access_alarm_outlined),
          label: Text('Time'),
        ),
      ],
    );
  }
}
