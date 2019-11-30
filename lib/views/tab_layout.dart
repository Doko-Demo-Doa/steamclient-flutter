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
          title: Image.asset('assets/images/header_logo.png', height: 36),
          centerTitle: true),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 2) {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (ctx) => StoreFront()));
          }
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            title: Text('さがす'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('トップ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('マイページ'),
          )
        ],
      ),
    );
  }
}

class SteamTablayout extends StatefulWidget {
  @override
  _TabLayoutState createState() {
    return _TabLayoutState();
  }
}
