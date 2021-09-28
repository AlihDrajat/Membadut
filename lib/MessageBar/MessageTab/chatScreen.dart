import 'package:flutter/material.dart';

import 'favorites.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();

  final User user;
  ChatScreen({required this.user});
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, left: 80, bottom: 8)
          : EdgeInsets.only(top: 8, bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe
            ? Color.fromARGB(255, 83, 87, 90)
            : Color.fromARGB(255, 75, 79, 82),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time, style: TextStyle(fontSize: 12)),
          Text(message.text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );

    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
          icon: message.isLiked
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          iconSize: 30,
          color: message.isLiked
              ? Color.fromARGB(255, 156, 92, 54)
              : Color.fromARGB(255, 75, 79, 82),
          onPressed: () {},
        )
      ],
    );
  }

  _buildMessageType() {
    return Container(
        color: Color.fromARGB(255, 78, 82, 85),
        child: Row(
          children: <Widget>[
            IconButton(
              color: Color.fromARGB(255, 156, 92, 54),
              icon: Icon(Icons.photo),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a Message....'),
              ),
            ),
            IconButton(
              color: Color.fromARGB(255, 156, 92, 54),
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ));
  }

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
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.only(top: 15),
                          itemCount: messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Message message = messages[index];
                            final bool isMe =
                                message.sender.id == currentUser.id;
                            return _buildMessage(message, isMe);
                          }),
                    ),
                  ),
                ),
                _buildMessageType(),
              ],
            ),
          ),
        ));
  }
}
