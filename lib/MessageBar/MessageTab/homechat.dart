import 'package:flutter/material.dart';
import 'package:login_cenah/MessageBar/MessageTab/favContact.dart';
import '../../drawer.dart';
import 'recent.dart';
import 'tabBar.dart';

class HomeChat extends StatefulWidget {
  const HomeChat({Key? key}) : super(key: key);

  @override
  _HomeChatState createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> {
  final List<String> categories = [
    'Message',
    'Groups',
    'Calls',
    'Friend Request'
  ];

  Widget _buildChatUI() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 88, 92, 95),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: <Widget>[
                FavContact(),
                RecentChat(),
              ],
            ),
          ),
        ),
      ],
    );
  }

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
                child: Categories(),
              )),
        ),
        body: TabBarView(
          children: <Widget>[
            _buildChatUI(),
            Text('a'),
            Text('b'),
            Text('c'),
          ],
        ),
      ),
    );
  }
}
