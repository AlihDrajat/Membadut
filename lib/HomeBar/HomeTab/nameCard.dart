import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Container(
        height: 200,
        width: 325,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/expedition.jpg'), fit: BoxFit.fill),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 13, left: 23),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/ciwi.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CiwiG0',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Asia Server Lv. 57',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                width: 275,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '4',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Days Active',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Post',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '6',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '7',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Follower',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
