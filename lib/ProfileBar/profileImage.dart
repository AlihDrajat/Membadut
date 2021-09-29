import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 110,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ciwi.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }
}
