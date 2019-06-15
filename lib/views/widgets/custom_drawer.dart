import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);
  static String AVATAR_LINK =
      "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg";

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(color: HexColor('171A21')),
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
                    child: Image.network(AVATAR_LINK, width: 40, height: 40)),
                Padding(padding: const EdgeInsets.only(left: 20)),
                Text('Doko',
                    style:
                        TextStyle(color: HexColor('#898989'), fontSize: 24))
              ],
            )
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 20, top: 22),
            child: new Text('Wallet: 24', style: TextStyle(fontSize: 20, color: HexColor('#898989')))
          )
        ],
      ),
    );
  }
}
