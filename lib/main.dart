import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/src/views/screens/storefront.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: new StoreFront()
    );
  }
}
