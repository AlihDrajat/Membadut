import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'post.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            final Post post = posts[index];
            return Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(post.sender.imageUrl),
                        ),
                      ),
                      SizedBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(post.sender.name),
                          Text(post.time),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 200,
                    width: 325,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: post.isLiked
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
                        iconSize: 30,
                        color: post.isLiked
                            ? Color.fromARGB(255, 156, 92, 54)
                            : Color.fromARGB(255, 75, 79, 82),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          color: Color.fromARGB(255, 75, 79, 82),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.forward),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
