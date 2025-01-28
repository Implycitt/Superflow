import 'package:flutter/material.dart';

class HomePage extends StatefulWidget { 
  @override 
  State<HomePage> createState() => _HomePageState(); 
} 
  
class _HomePageState extends State<HomePage> { 
  int _selectedIndex = 0; 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Row( 
        children: <Widget>[ 
          NavigationRail( 
            selectedIndex: _selectedIndex, 
            onDestinationSelected: (int index) { 
              setState(() { 
                _selectedIndex = index; 
              }); 
            }, 
            labelType: NavigationRailLabelType.selected, 
            backgroundColor: Colors.purple, 
            destinations: const <NavigationRailDestination> 
            [ 
              NavigationRailDestination( 
                icon: Icon(Icons.favorite_border), 
                selectedIcon: Icon(Icons.favorite), 
                label: Text('Wishlist'), 
              ), 
              NavigationRailDestination( 
                icon: Icon(Icons.person_outline_rounded), 
                selectedIcon: Icon(Icons.person), 
                label: Text('Account'), 
              ), 
              NavigationRailDestination( 
                icon: Icon(Icons.shopping_cart_outlined), 
                selectedIcon: Icon(Icons.shopping_cart), 
                label: Text('Cart'), 
              ), 
            ], 
            selectedIconTheme: IconThemeData(color: Colors.white), 
            unselectedIconTheme: IconThemeData(color: Colors.black), 
            selectedLabelTextStyle: TextStyle(color: Colors.white), 
          ), 
          Expanded( 
            child: Center( 
              child: Text('Page Number: $_selectedIndex'), 
            ), 
          ) 
        ], 
      ), 
    ); 
  } 
}
