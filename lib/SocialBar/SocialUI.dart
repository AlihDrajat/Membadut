import 'package:flutter/material.dart';

import 'MessageTab/favContact.dart';
import 'MessageTab/recent.dart';

class SocialUI extends StatefulWidget {
  const SocialUI({Key? key, List<Widget>? tabs}) : super(key: key);

  @override
  _SocialUIState createState() => _SocialUIState();
}

class _SocialUIState extends State<SocialUI> {
  final List<String> categories = [
    'Message',
    'Groups',
    'Calls',
    'Friend Request'
  ];

  Widget _buildMessageUI() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 88, 92, 95),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 6,
                    blurRadius: 4,
                    offset: Offset(1, 5),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  FavContact(),
                  RecentChat(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TabBar socialTabBar = TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.white.withOpacity(0.3),
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(
          child: Text(
            'Message',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Tab(
          child: Text(
            'Groups',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Tab(
          child: Text(
            'Calls',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Tab(
          child: Text(
            'Friend Request',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 156, 92, 54),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              child: socialTabBar,
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 156, 92, 54),
          child: TabBarView(
            children: <Widget>[
              _buildMessageUI(),
              Text('a'),
              Text('b'),
              Text('c'),
            ],
          ),
        ),
      ),
    );
  }
}
