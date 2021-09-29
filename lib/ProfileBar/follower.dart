import 'package:flutter/material.dart';

class Follower extends StatelessWidget {
  const Follower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 69),
      child: Column(
        children: <Widget>[
          Text(
            'Follower',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
          Text(
            '690',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
