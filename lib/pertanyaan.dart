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
          title: Text('FAQ'),
        ),
        body: Container(
          color: Color.fromARGB(255, 58, 62, 65),
          child: Center(),
        ));
  }
}
