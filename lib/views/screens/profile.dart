import 'package:flutter/material.dart';
import '../widgets/profile/profile_main.dart';
import '../widgets/profile/comment_section.dart';

class ProfileWidgetState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[ProfileMain(), CommentSection()],
    );
  }
}

class Profile extends StatefulWidget {
  @override
  ProfileWidgetState createState() => new ProfileWidgetState();
}
