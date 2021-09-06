import 'package:flutter/material.dart';
import 'drawer.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ini Halaman Utama'),
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
        )));
  }
}
