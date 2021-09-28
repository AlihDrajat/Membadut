import 'package:flutter/material.dart';

import 'chatScreen.dart';
import 'favorites.dart';

class FavContact extends StatefulWidget {
  const FavContact({Key? key}) : super(key: key);

  @override
  _FavContactState createState() => _FavContactState();
}

class _FavContactState extends State<FavContact> {
  @override
  Widget build(BuildContext context) {
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
}
