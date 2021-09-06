import 'package:flutter/material.dart';
import 'package:login_cenah/rumah.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Rumah();
            }));
          },
        ),
        title: Text('Tentang Kami'),
      ),
      body: Center(child: Text('About Us')),
    );
  }
}