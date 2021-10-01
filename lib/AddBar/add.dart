import 'package:flutter/material.dart';

import '../Drawer/drawer.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Center(
          child: Text('Add'),
        ),
      ),
    );
  }
}
