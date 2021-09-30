import 'package:flutter/material.dart';
import 'package:login_cenah/SocialBar/MessageTab/favContact.dart';
import 'recent.dart';

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
    return TabBarView(
      children: <Widget>[
        _buildChatUI(),
        Text('a'),
        Text('b'),
        Text('c'),
      ],
    );
  }
}
