import 'package:flutter/material.dart';
import 'package:login_cenah/HomeBar/HomeTab/nameCard.dart';
import 'package:login_cenah/HomeBar/HomeTab/post.dart';
import 'package:login_cenah/HomeBar/HomeTab/story.dart';

import 'FollowingTab/following.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final List<String> categories = [
    'Home',
    'Following',
    'Guides',
    'Events',
    'Quiz',
  ];

  TabBar homeTabBar = TabBar(
    isScrollable: true,
    unselectedLabelColor: Colors.white.withOpacity(0.3),
    indicatorColor: Colors.white,
    tabs: <Widget>[
      Tab(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 17),
        ),
      ),
      Tab(
        child: Text(
          'Following',
          style: TextStyle(fontSize: 17),
        ),
      ),
      Tab(
        child: Text(
          'Guides',
          style: TextStyle(fontSize: 17),
        ),
      ),
      Tab(
        child: Text(
          'Events',
          style: TextStyle(fontSize: 17),
        ),
      ),
      Tab(
        child: Text(
          'Quiz',
          style: TextStyle(fontSize: 17),
        ),
      ),
    ],
  );

  Widget _buildHomeTab() {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Story(),
                  Divider(
                    height: 3,
                    color: Color.fromARGB(255, 156, 92, 54),
                  ),
                  NameCard(),
                  Post()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFollowingTab() {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        child: Column(
          children: <Widget>[
            YourFollowing(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 156, 92, 54),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              child: homeTabBar,
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 88, 92, 95),
          child: TabBarView(
            children: <Widget>[
              _buildHomeTab(),
              _buildFollowingTab(),
              Text('Guides'),
              Text('Events'),
              Text('Quiz'),
            ],
          ),
        ),
      ),
    );
  }
}
