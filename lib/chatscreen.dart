import 'package:flutter/material.dart';

import 'favorites.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();

  final User user;
  ChatScreen({required this.user});
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 156, 92, 54),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 156, 92, 54),
          elevation: 1,
          title: Text(
            'Direct Message',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 3,
                  bottom: 5,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 37,
                          backgroundImage: AssetImage(widget.user.imageUrl),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.user.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.58,
                              child: Text(
                                widget.user.lastSeen,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 88, 92, 95),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
