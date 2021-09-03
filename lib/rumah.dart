import 'package:flutter/material.dart';
import 'package:login_cenah/main.dart';
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
        endDrawer: Drawers(),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Keluar'),
            )
          ],
        )));
  }
}
