import 'package:flutter/material.dart';
import 'package:steamclient/src/views/home.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Steam Client",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new Home(),
    );
  }
}
