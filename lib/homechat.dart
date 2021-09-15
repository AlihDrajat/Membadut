import 'package:flutter/material.dart';
import 'drawer.dart';
import 'favorites.dart';

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

  Widget _buildCategories(BuildContext context) {
    int selectedIndex = 0;

    return Container(
        height: 90,
        color: Color.fromARGB(255, 156, 92, 54),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.white60,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1),
                  ),
                ),
              );
            }));
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
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              // ignore: non_constant_identifier_names
              itemBuilder: (BuildContext, int index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 37,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
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
                );
              }),
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(200, 156, 92, 54),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 156, 92, 54),
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 156, 92, 54),
        title: Text(
          'Message',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          _buildCategories(context),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 88, 92, 95),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  _buildFavorite(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
