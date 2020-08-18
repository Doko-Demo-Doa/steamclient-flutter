import 'package:flutter/material.dart';
import 'package:steamclient/utils/utils_colors.dart';
import 'package:steamclient/views/widgets/drawer/drawer_expansion_widget.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key key}) : super(key: key);
  static String AVATAR_LINK =
      "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg";

  final List<DrawerExpansionWidget> drawerItems = [
    new DrawerExpansionWidget('Notifications', [
      'New Comments',
      'New Iiems',
      'New invites',
      'New gifts',
      'New messages'
    ]),
    new DrawerExpansionWidget('Store',
        ['Featured', 'Explore', 'Curators', 'Wishlist', 'News', 'Stats']),
    new DrawerExpansionWidget('Community',
        ['Home', 'Discussions', 'Workshop', 'Chat', 'Market', 'Broadcasts']),
    new DrawerExpansionWidget('You & Friends', [
      'Activity',
      'Games',
      'Profile',
      'Friends',
      'Groups',
      'Content',
      'Badges',
      'Inventory',
      'Reviews'
    ]),
    // new DrawerExpansionItem('Support', [])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: HexColor('171A21')),
      child: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Avatar and user nickname
            new Padding(
                padding: const EdgeInsets.only(top: 38, left: 24),
                child: new Row(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: GestureDetector(
                            onTap: () => {
                                  // Code...
                                },
                            child: Image.network(AVATAR_LINK,
                                width: 40, height: 40))),
                    Padding(padding: const EdgeInsets.only(left: 20)),
                    Text('Doko',
                        style:
                            TextStyle(color: HexColor('#898989'), fontSize: 24))
                  ],
                )),
            new Padding(
                padding: const EdgeInsets.only(left: 20, top: 22),
                child: new Text('Wallet: 24',
                    style:
                        TextStyle(fontSize: 20, color: HexColor('#898989')))),
            new Padding(padding: const EdgeInsets.all(14)),
            new Column(children: drawerItems),
          ],
        ),
      ),
    );
  }
}
