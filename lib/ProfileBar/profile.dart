import 'package:flutter/material.dart';
import '../drawer.dart';
import 'birth.dart';
import 'coverImage.dart';
import 'follower.dart';
import 'following.dart';
import 'name.dart';
import 'post.dart';
import 'profileImage.dart';
import 'rank.dart';
import 'server.dart';
import 'status.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final myController = TextEditingController();

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 92, 54),
        title: Text('Profile'),
      ),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Stack(
          children: <Widget>[
            CoverImage(),
            SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.height / 6.4,
                  ),
                  ProfileImage(),
                  Name(),
                  Status(),
                  Divider(
                    thickness: 2,
                    color: Color.fromARGB(200, 156, 92, 54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Birth(),
                      Post(),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height / 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Server(),
                      Rank(),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height / 18.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Follower(),
                      Following(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
