import 'package:flutter/material.dart';

import 'followingList.dart';

class YourFollowing extends StatefulWidget {
  const YourFollowing({Key? key}) : super(key: key);

  @override
  _YourFollowingState createState() => _YourFollowingState();
}

class _YourFollowingState extends State<YourFollowing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 156, 92, 54),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: "Search Here...",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                          iconSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 370,
              child: ListView.builder(
                itemCount: following.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 5, left: 7),
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage(following[index].imageUrl),
                            ),
                            Column(
                              children: <Widget>[
                                Text(following[index].name),
                                Text(following[index].signature),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 140, 141, 143),
                              ),
                              shape: BoxShape.rectangle),
                          padding: EdgeInsets.all(3),
                          child: Text('Following'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
