import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key, List<Widget>? tabs}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    'Message',
    'Groups',
    'Calls',
    'Friend Request'
  ];

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
