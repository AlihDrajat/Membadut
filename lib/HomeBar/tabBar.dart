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
  }
}
