import 'package:flutter/material.dart';
import 'package:login_cenah/rumah.dart';

class Suggest extends StatefulWidget {
  const Suggest({Key? key}) : super(key: key);

  @override
  _SuggestState createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berikan Saranmu ^_^'),
      ),
      body: Center(
            child: ElevatedButton(
          child: Text('Halaman Utama'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Rumah();
                },
              ),
            );
          },
        ))
    );
  }
}
