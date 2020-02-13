// This is actually a wrapper for another 5 screens: Guard, Profile, Store, Chat, Account
// It should have its own navigator.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:steamclient/enums/viewstate.dart';
import 'package:steamclient/views/screens/chat_threads.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';
import 'package:steamclient/views/screens/steam_guard.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;
import 'package:steamclient/vms/auth_vm.dart';

class _TabLayoutState extends State<SteamTablayout>
    with TickerProviderStateMixin<SteamTablayout> {
  int _currentTabIndex = 2;
  final _kTabPages = <Widget>[
    SteamGuard(),
    Profile(),
    StoreFront(),
    ChatThreads()
  ];

  @override
  Widget build(BuildContext context) {
    const commonTextStyle = TextStyle(fontSize: 12);
    final authState = Provider.of<AuthViewModel>(context).state;

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.5),
            child: Container(
              height: 1.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    PredefinedColors.ALMOST_BLACK,
                    Colors.white,
                    PredefinedColors.ALMOST_BLACK
                  ])),
            ),
          ),
          backgroundColor: PredefinedColors.ALMOST_BLACK,
          title: Image.asset('assets/images/header_logo.png', height: 36),
          centerTitle: true),
      body: IndexedStack(
        index: _currentTabIndex,
        children: _kTabPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        backgroundColor: PredefinedColors.ALMOST_BLACK,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 4) {
            if (authState == AuthState.Authenticated) {
              return print('Authenticated!!');
            }
            Navigator.pushNamed(context, 'Login');
            return;
          }
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shieldAlt),
            title: Text('Guard', style: commonTextStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Profile', style: commonTextStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Store', style: commonTextStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat', style: commonTextStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Library', style: commonTextStyle),
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
