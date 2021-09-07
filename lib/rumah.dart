import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 156, 92, 54),
        title: Text('Home'),
      ),
      drawer: Drawers(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(200, 255, 160, 55),
            Color.fromARGB(200, 186, 100, 70),
          ],
        ),
        color: Color.fromARGB(200, 100, 45, 16),
        activeColor: Colors.brown,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
      ),
    );
  }
}
