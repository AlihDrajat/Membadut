import 'package:flutter/material.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  _HomeCategoriesState createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
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
  }
}
