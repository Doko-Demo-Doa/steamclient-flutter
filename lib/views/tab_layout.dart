// This is actually a wrapper for another 5 screens: Guard, Profile, Store, Chat, Account
// It should have its own navigator.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/enums/viewstate.dart';
import 'package:steamclient/views/screens/chat_threads.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/steam_guard.dart';
import 'package:steamclient/views/screens/storefront_v2.dart';
import 'package:steamclient/vms/auth_vm.dart';

class _TabLayoutState extends State<SteamTablayout>
    with TickerProviderStateMixin<SteamTablayout> {
  int _currentTabIndex = 2;
  final _kTabPages = <Widget>[
    SteamGuard(),
    Profile(),
    StoreFrontV2(),
    ChatThreads()
  ];

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthViewModel>(context).state;

    return Scaffold(
      body: IndexedStack(
        index: _currentTabIndex,
        children: _kTabPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        backgroundColor: AppColors.CHARCOAL_GREY,
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
            label: 'Guard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
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
