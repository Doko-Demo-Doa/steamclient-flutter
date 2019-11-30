import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              PredefinedColors.DARK_BLUE,
              PredefinedColors.ALMOST_BLACK
            ])),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(30, 46, 30, 38),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: PredefinedColors.DARK_BLUE,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 5.0,
                    spreadRadius: 7.0)
              ], shape: BoxShape.circle),
              child: Icon(
                FontAwesomeIcons.steam,
                color: PredefinedColors.DARK_BLUE_GREY,
                size: 86,
              ),
            ),
            SizedBox(
                child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(color: Colors.white60),
                  decoration: InputDecoration(
                      counterText: '',
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: PredefinedColors.GUNMETAL)),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: PredefinedColors.GUNMETAL)),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: PredefinedColors.GUNMETAL)),
                  maxLength: 32,
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white60),
                  decoration: InputDecoration(
                      counterText: '',
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: PredefinedColors.GUNMETAL)),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: PredefinedColors.GUNMETAL)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: PredefinedColors.GUNMETAL)),
                  maxLength: 32,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
