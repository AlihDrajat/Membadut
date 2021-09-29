import 'package:flutter/material.dart';

class Server extends StatelessWidget {
  const Server({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 74),
      child: Column(
        children: <Widget>[
          Text(
            'Server',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            'Asia',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
