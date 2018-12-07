import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Steam Client",
      theme: new ThemeData(primarySwatch: Colors.black),
      home: null,
    );
  }
}
