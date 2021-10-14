import 'package:flutter/material.dart';
import 'package:login_cenah/HomeBar/HomeTab/postList.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        itemCount: story.length,
        scrollDirection: Axis.horizontal,
        // ignore: non_constant_identifier_names
        itemBuilder: (BuildContext, int index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: story[index].newStory
                          ? Color.fromARGB(255, 255, 160, 55)
                          : Color.fromARGB(255, 140, 141, 143),
                    ),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(story[index].imageUrl),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  story[index].name,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
