import 'package:flutter/material.dart';

class Birth extends StatelessWidget {
  const Birth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          Text(
            'Date of Birth',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text('14 May 2003',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w200,
              )),
        ],
      ),
    );
  }
}
