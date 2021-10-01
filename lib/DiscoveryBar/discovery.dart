import 'package:flutter/material.dart';
import '../Drawer/drawer.dart';

class Discovery extends StatelessWidget {
  const Discovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Center(
          child: Text('Discovery'),
        ),
      ),
    );
  }
}
