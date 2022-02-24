
import 'package:flutter/material.dart';
import 'package:technical_service/provider/bottom_navigation_provider.dart';

BottomNavigationBar homeBottomNavigationBar(
    int _selectedIndex, Function(int)? _onItemTapped) {
  return BottomNavigationBar(
    landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
    backgroundColor: Colors.white,
    elevation: 0,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Ana Sayfa',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Mesajlar',
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.teal,
    onTap: _onItemTapped,
  );
}
