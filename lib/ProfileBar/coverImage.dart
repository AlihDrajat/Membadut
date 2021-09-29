import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Windrise.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
