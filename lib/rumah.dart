import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'add.dart';
import 'discovery.dart';
import 'MessageBar/MessageTab/homechat.dart';
import 'profile.dart';
import 'home.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    Home(),
    Discovery(),
    Add(),
    HomeChat(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      body: listWidgets[selectedIndex],
      bottomNavigationBar: ConvexAppBar.badge(
        {3: '21'},
        style: TabStyle.react,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(230, 255, 160, 55),
            Color.fromARGB(230, 186, 100, 70),
          ],
        ),
        color: Color.fromARGB(200, 100, 45, 16),
        activeColor: Colors.brown,
        initialActiveIndex: selectedIndex,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Social'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: onTap,
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
