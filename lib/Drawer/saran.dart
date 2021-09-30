import 'package:flutter/material.dart';
import 'package:login_cenah/MainPage/convexAppBar.dart';

class Suggest extends StatefulWidget {
  const Suggest({Key? key}) : super(key: key);

  @override
  _SuggestState createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
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
          title: Text('Berikan Saranmu ^_^'),
        ),
        body:
            Container(color: Color.fromARGB(255, 58, 62, 65), child: Center()));
  }
}
