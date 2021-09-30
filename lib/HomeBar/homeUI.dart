import 'package:flutter/material.dart';

import '../Drawer/drawer.dart';
import 'tabBar.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final List<String> categories = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 156, 92, 54),
        drawer: Drawers(),
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Color.fromARGB(200, 156, 92, 54),
          title: Text(
            'Social',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                child: HomeCategories(),
              )),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('a'),
            Text('b'),
            Text('c'),
          ],
        ),
      ),
    );
  }
}
