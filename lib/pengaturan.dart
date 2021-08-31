import 'package:flutter/material.dart';
import 'package:login_cenah/rumah.dart';

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
          title: Text('Pengaturan'),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Halaman Utama'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Rumah();
                },
              ),
            );
          },
        )));
  }
}
