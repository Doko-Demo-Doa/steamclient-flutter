import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/profile/profile_main.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfileMain()
          ],
        ),
      ),
    );
  }
}
