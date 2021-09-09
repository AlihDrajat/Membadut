import 'package:flutter/material.dart';
import 'drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 156, 92, 54),
        title: Text('Profile'),
      ),
      body: Container(
        color: Color.fromARGB(200, 42, 45, 49),
        child: Center(
          child: Text('Profile'),
        ),
      ),
    );
  }
}
