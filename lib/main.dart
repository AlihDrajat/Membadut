import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'halo haloo',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mari Membadut')),
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
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.width,
        color: Colors.lightBlue,
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welkom to badut community ^_^',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                    hintText: 'Masukkan Nama mu ^_^',
                    hintStyle: TextStyle(color: Colors.black45),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.black45))),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45)),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 40,
                      color: Colors.white,
                    ),
                    hintText: 'Masukkan Password mu ^_^',
                    hintStyle: TextStyle(color: Colors.black45),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black45))),
            SizedBox(
              height: 0,
            ),
            Card(
              color: Colors.black45,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Monggo',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
