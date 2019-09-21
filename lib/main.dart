import 'package:flutter/material.dart';
import 'package:steamclient/views/screens/storefront.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam',
      home: new StoreFront()
    );
  }
}
