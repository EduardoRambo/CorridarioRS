import 'package:estudos_parte_um/UI/views/views.dart';

import 'package:flutter/material.dart';

class NavigationComponent extends StatefulWidget {
  @override
  _NavigationComponentState createState() => _NavigationComponentState();
}

class _NavigationComponentState extends State<NavigationComponent> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: HomeView(),
    ),
    Center(
      child: RegisterActivityView(),
    ),
    Center(
      child: AboutUsView(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: 'Eventos',
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            label: 'Sobre Nós',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
