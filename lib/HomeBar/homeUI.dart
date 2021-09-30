import 'package:flutter/material.dart';
import '../Drawer/drawer.dart';

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        drawer: Drawers(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 156, 92, 54),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(homeTabBar.preferredSize.height),
            child: Container(
              child: homeTabBar,
            ),
          ),
          title: Text('Home'),
        ),
        body: Container(
          color: Color.fromARGB(255, 156, 92, 54),
          child: TabBarView(
            children: <Widget>[
              Text('Home'),
              Text('Following'),
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
