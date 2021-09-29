import 'package:flutter/material.dart';

class Rank extends StatelessWidget {
  const Rank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: <Widget>[
          Text(
            'Adventure Rank',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            '57',
            style: TextStyle(color: Colors.white, fontSize: 17),
          )
        ],
      ),
    );
  }
}
