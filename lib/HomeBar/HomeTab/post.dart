import 'package:flutter/material.dart';
import 'package:login_cenah/HomeBar/HomeTab/postList.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        itemCount: posts.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          final PostList post = posts[index];
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17, bottom: 5, top: 10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(post.sender.imageUrl),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(post.sender.name),
                          Text(post.time),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
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
    );
  }
}
