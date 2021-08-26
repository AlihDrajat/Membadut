import 'package:flutter/material.dart';
import 'package:login_cenah/main.dart';

class Rumah extends StatefulWidget {
  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ini Halaman Utama'),
        ),
        drawer: Drawer(
          elevation: 5,
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.lightBlue,
                  alignment: Alignment.bottomLeft,
                  child: Text('Badut Menu',
                      style: TextStyle(color: Colors.white, fontSize: 30))),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 25,
                  ),
                  title: Text(
                    'Tentang Kami',
                    style: TextStyle(fontSize: 25),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    size: 25,
                  ),
                  title: Text(
                    'FAQ',
                    style: TextStyle(fontSize: 25),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.markunread_mailbox,
                    size: 25,
                  ),
                  title: Text(
                    'Saran dan Bantuan',
                    style: TextStyle(fontSize: 25),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  title: Text(
                    'Pengaturan',
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Keluar'),
            )
          ],
        )));
  }
}
