import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import '../widgets/profile/profile_main.dart';
import '../widgets/profile/comment_section.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: null,
      ),
      appBar: new AppBar(
        centerTitle: true,
        title: new Image.network('https://steamcommunity-a.akamaihd.net/public/shared/images/responsive/header_logo.png', height: 28),
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: HexColor('171A21'),
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
