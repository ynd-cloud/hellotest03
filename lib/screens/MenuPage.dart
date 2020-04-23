import 'package:flutter/material.dart';
import 'package:hellotest03/widgets/CardMenu.dart';
import 'package:hellotest03/widgets/NavDrawer.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('Menu Page'),),
      body: CardMenu(),
      
    );
  }
}