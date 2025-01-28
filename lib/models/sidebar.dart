import 'package:flutter/material.dart'

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3444B5),
        title: const Text('Home Screen'),
      ),
      drawer: const MyDrawer(),
    )
  }
}
