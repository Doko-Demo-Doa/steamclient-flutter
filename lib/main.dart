import 'package:flutter/material.dart';
import 'package:steamclient/views/screens/storefront.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam',
      color: HexColor('#213E57'),
      home: new StoreFront()
    );
  }
}
