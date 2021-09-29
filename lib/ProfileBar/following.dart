import 'package:flutter/material.dart';

class Following extends StatelessWidget {
  const Following({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        children: <Widget>[
          Text(
            'Following',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            '609',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
