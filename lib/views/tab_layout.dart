// This is actually a wrapper for another 5 screens: Guard, Profile, Store, Chat, Account
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/views/screens/app_page.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';
import 'package:steamclient/views/screens/steam_guard.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class _TabLayoutState extends State<SteamTablayout> {
  int _currentTabIndex = 0;
  final _kTabPages = <Widget>[
    SteamGuard(),
    StoreFront(),
    Profile(),
    AppPage('2222')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PredefinedColors.ALMOST_BLACK,
          title: Image.asset('assets/images/header_logo.png', height: 36),
          centerTitle: true),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        backgroundColor: PredefinedColors.ALMOST_BLACK,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // if (index == 2) {
          //   Navigator.of(context)
          //       .push(new MaterialPageRoute(builder: (ctx) => StoreFront()));
          // }
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shieldAlt),
            title: Text('Guard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Store'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Library'),
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
