import 'package:flutter/material.dart';
import 'MessageBar/MessageTab/chatScreen.dart';
import 'drawer.dart';
import 'MessageBar/MessageTab/favorites.dart';

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

  get user => null;

  Widget _buildTabBar(BuildContext context) {
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

  Widget _buildFavorite() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favorite Contacts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 116,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              // ignore: non_constant_identifier_names
              itemBuilder: (BuildContext, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(200, 156, 92, 54),
        ),
      ],
    );
  }

  Widget _buildRecentChat() {
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
                _buildFavorite(),
                _buildRecentChat(),
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
                child: _buildTabBar(context),
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
