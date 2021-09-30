import 'package:flutter/material.dart';

import 'chatScreen.dart';
import 'favorites.dart';

class RecentChat extends StatefulWidget {
  const RecentChat({Key? key}) : super(key: key);

  @override
  _RecentChatState createState() => _RecentChatState();
}

class _RecentChatState extends State<RecentChat> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(user: chat.sender),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 3,
                    bottom: 5,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: chat.unread
                        ? Color.fromARGB(255, 75, 79, 82)
                        : Color.fromARGB(255, 88, 92, 95),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(chat.sender.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.58,
                                child: Text(
                                  chat.text,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(chat.time),
                          SizedBox(
                            height: 5,
                          ),
                          chat.unread
                              ? Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30)),
                                  alignment: Alignment.center,
                                  child: Text('NEW'))
                              : SizedBox.shrink(),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
