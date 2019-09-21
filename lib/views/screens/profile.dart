import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/drawer/custom_drawer.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import '../widgets/profile/profile_main.dart';
import '../widgets/profile/comment_section.dart';

class ProfileWidgetState extends State<Profile> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(child: new CustomDrawer()),
      appBar: new AppBar(
        centerTitle: true,
        title: new Image.network('https://steamcommunity-a.akamaihd.net/public/shared/images/responsive/header_logo.png', height: 28),
        leading: new GestureDetector(
          onTap: () => {
            _scaffoldKey.currentState.openDrawer()
          },
          child: Icon(Icons.menu, color: Colors.white),
        ),
        backgroundColor: HexColor('#171A21'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ProfileMain(),
          CommentSection()
        ],
      ),
    );
  }
}


class Profile extends StatefulWidget {
  @override
  ProfileWidgetState createState() => new ProfileWidgetState();
}
