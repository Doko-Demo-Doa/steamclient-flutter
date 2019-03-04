import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/profile/profile_main.dart';
import '../widgets/profile/comment_section.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
