import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          Text(
            'Posts',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            '69',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
