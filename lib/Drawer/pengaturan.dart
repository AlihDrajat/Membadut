import 'package:flutter/material.dart';
import 'package:login_cenah/convexAppBar.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 156, 92, 54),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Rumah();
              }));
            },
          ),
          title: Text('Pengaturan'),
        ),
        body:
            Container(color: Color.fromARGB(255, 58, 62, 65), child: Center()));
  }
}
