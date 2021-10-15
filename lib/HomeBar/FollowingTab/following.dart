import 'package:flutter/material.dart';

class YourFollowing extends StatefulWidget {
  const YourFollowing({Key? key}) : super(key: key);

  @override
  _YourFollowingState createState() => _YourFollowingState();
}

class _YourFollowingState extends State<YourFollowing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
