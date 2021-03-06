import 'package:flutter/material.dart';
import 'package:login_cenah/MainPage/main.dart';

import 'package:login_cenah/Drawer/pertanyaan.dart';
import 'package:login_cenah/Drawer/saran.dart';
import 'package:login_cenah/Drawer/tentang.dart';

import 'pengaturan.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(200, 42, 45, 49),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _drawerHeader(),
            _drawerItem(
              icon: Icons.person,
              text: 'Tentang Kami',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return AboutUs();
                }));
              },
            ),
            _drawerItem(
              icon: Icons.question_answer_rounded,
              text: 'Saran dan Bantuan',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Suggest();
                }));
              },
            ),
            _drawerItem(
              icon: Icons.help_outline_sharp,
              text: 'FAQ',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return FAQ();
                }));
              },
            ),
            _drawerItem(
              icon: Icons.settings,
              text: 'Pengaturan',
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Setting();
                })),
              },
            ),
            Divider(height: 25, thickness: 1),
            _drawerItem(
              icon: Icons.logout,
              text: 'Logout',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/istri.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child:
            Image(image: AssetImage('assets/sddefault.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child:
            Image(image: AssetImage('assets/DSCF6181.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('CiwiG0'),
    accountEmail: Text('ayakawangy@mihoyo.com'),
  );
}

Widget _drawerItem({IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
