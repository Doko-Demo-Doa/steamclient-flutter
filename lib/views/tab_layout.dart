// This is actually a wrapper for another 5 screens: Guard, Profile, Store, Chat, Account
import 'package:flutter/material.dart';
import 'package:steamclient/views/screens/app_page.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';

class _TabLayoutState extends State<SteamTablayout> {
  int _currentTabIndex = 0;
  final _kTabPages = <Widget>[StoreFront(), Profile(), AppPage('2222')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/header_logo.png', height: 36),
          centerTitle: true),
    );
  }
}

class SteamTablayout extends StatefulWidget {
  @override
  _TabLayoutState createState() {
    return _TabLayoutState();
  }
}
