import 'package:flutter/material.dart';

import '../drawer.dart';

class SocialCategories extends StatefulWidget {
  const SocialCategories({Key? key, List<Widget>? tabs}) : super(key: key);

  @override
  _SocialCategoriesState createState() => _SocialCategoriesState();
}

class _SocialCategoriesState extends State<SocialCategories> {
  final List<String> categories = [
    'Message',
    'Groups',
    'Calls',
    'Friend Request'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        title: Text(
          'Social',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: TabBar(
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
      ),
    );
  }
}
