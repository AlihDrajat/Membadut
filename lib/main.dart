import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_cenah/convexAppBar.dart';

final List<String> imgList = [
// Zhongli Lantern Rite
  'assets/Zhongli.png',
// Windrise
  'assets/Windrise.jpg',
// Fish Blasting
  'assets/FishBlast.jpg',
];

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
  int _currentIndex = 0;
  List<int> cardList = [1, 2, 3, 4, 5, 6];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  String username = 'Alih';
  String password = 'mantappu';
  String alert = 'Siap Login';

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();
  TextEditingController alertInput = new TextEditingController();

  void prosesLogin() {
    if (_formkey.currentState!.validate()) {
      print('Test');
      if (usernameInput.text == username && passwordInput.text == password) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Rumah()));
      } else {
        setState(() {
          alert = 'username atau password salah';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 156, 92, 54),
          title: Text(
            'Mari Membadut',
            style: TextStyle(
              color: Color.fromARGB(200, 255, 210, 130),
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          color: Color.fromARGB(200, 42, 45, 49),
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 94,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Welkom to badut community ^_^',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        controller: usernameInput,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Isi Username';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            ),
                            hintText: 'Masukkan Nama mu ^_^',
                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.black))),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: passwordInput,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Isi Password';
                          }

                          return null;
                        },
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
                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black))),
                    SizedBox(
                      height: 0,
                    ),
                    Card(
                      color: Color.fromARGB(200, 216, 143, 77),
                      elevation: 5,
                      child: Container(
                        height: 50,
                        child: Center(
                            child: InkWell(
                          splashColor: Colors.white,
                          onTap: () => prosesLogin(),
                          child: Center(
                            child: Text('Monggo',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(200, 156, 92, 54),
                                )),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              pauseAutoPlayOnTouch: true,
                              enlargeCenterPage: true,
                              viewportFraction: 0.8,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              }),
                          items: imgList
                              .map((item) => Container(
                                    child: Center(
                                        child: Image.asset(item,
                                            fit: BoxFit.cover, width: 1000)),
                                  ))
                              .toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(imgList, (index, url) {
                            return Container(
                              width: _currentIndex == index ? 15 : 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: _currentIndex == index
                                    ? Color.fromARGB(200, 216, 143, 77)
                                        .withOpacity(0.5)
                                    : Color.fromARGB(200, 216, 143, 77)
                                        .withOpacity(0.3),
                              ),
                            );
                          }),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
    );
  }
}
