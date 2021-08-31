import 'package:flutter/material.dart';
import 'package:login_cenah/rumah.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
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
