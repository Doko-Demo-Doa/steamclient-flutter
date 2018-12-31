import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/src/views/screens/storefront.dart';
import 'package:steamclient/src/views/screens/profile.dart';


void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam',
      home: new Profile()
    );
  }
}
