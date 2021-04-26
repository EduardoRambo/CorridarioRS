import 'package:estudos_parte_um/UI/component/component.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigationComponent(),
      bottomNavigationBar: NavigationComponent(),
    );
  }
}
