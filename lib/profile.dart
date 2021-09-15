import 'package:flutter/material.dart';
import 'drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final myController = TextEditingController();
  final String _name = 'CiwiG0';
  final String _dateBirth = '14 Mays 2003';
  final String _status = "Ayaka's Simp ";
  final String _post = '69';
  final String _server = 'Asia';
  final String _rank = '57';
  final String _follower = '690';
  final String _following = '609';

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 3.8,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Windrise.jpg'), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 110,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ciwi.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }

  Widget _buildName() {
    TextStyle _nameTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w700,
    );
    return Text(
      _name,
      style: _nameTextStyle,
    );
  }

  Widget _buildBirth() {
    TextStyle _birthTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w200,
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          Text(
            'Date of Birth',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            _dateBirth,
            style: _birthTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        _status,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildPost(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: <Widget>[
          Text(
            'Posts',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            _post,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }

  Widget _buildServer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 74),
      child: Column(
        children: <Widget>[
          Text(
            'Server',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            _server,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget _buildRank() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: <Widget>[
          Text(
            'Adventure Rank',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            _rank,
            style: TextStyle(color: Colors.white, fontSize: 17),
          )
        ],
      ),
    );
  }

  Widget _buildFollower() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Column(
        children: <Widget>[
          Text(
            'Follower',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
          Text(
            _follower,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowing() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 43),
      child: Column(
        children: <Widget>[
          Text(
            'Following',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            _following,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 156, 92, 54),
        title: Text('Profile'),
      ),
      body: Container(
        color: Color.fromARGB(255, 88, 92, 95),
        child: Stack(
          children: <Widget>[
            _buildCoverImage(screenSize),
            SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.height / 6.4,
                  ),
                  _buildProfileImage(),
                  _buildName(),
                  _buildStatus(context),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(200, 156, 92, 54),
                  ),
                  Row(
                    children: <Widget>[
                      _buildBirth(),
                      _buildPost(context),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height / 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      _buildServer(),
                      _buildRank(),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height / 18.5,
                  ),
                  Row(
                    children: <Widget>[
                      _buildFollower(),
                      _buildFollowing(),
                      Divider(
                        thickness: 3,
                        color: Color.fromARGB(200, 156, 92, 54),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
