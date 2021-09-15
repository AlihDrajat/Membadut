import 'package:flutter/material.dart';
import 'drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 156, 92, 54),
        title: Text('Home'),
      ),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
