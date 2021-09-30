import 'package:flutter/material.dart';
import 'Drawer/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> categories = [
    'Home',
    'Following',
    'Guides',
    'Events',
    'Quiz',
  ];

  Widget _buildCategories(BuildContext context) {
    int selectedIndex = 0;

    return Container(
        height: 75,
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
                  padding: EdgeInsets.symmetric(vertical: 23, horizontal: 15),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 92, 54),
        title: Text('Home'),
      ),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Column(children: <Widget>[
          _buildCategories(context),
        ]),
      ),
    );
  }
}
