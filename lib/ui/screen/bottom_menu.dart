import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(124, 126, 146, 0.56), width: 0.8),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 2,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF252849),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF3B3E5B),
        iconSize: 22,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
