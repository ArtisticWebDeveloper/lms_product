import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
final selectedIndex;
BottomMenu({this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    
    return 
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
          activeIcon: Icon(Icons.home_filled, color: Colors.blue[800]),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist",
        activeIcon: Icon(Icons.favorite,color: Colors.blue[800])),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
          activeIcon: Icon(Icons.search, color: Colors.blue[800]),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: "My Learning",
          activeIcon: Icon(Icons.bookmark, color: Colors.blue[800]),
        )
      ]
    );
  }
  }