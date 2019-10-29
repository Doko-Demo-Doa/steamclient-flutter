import 'package:flutter/material.dart';
import 'package:steamclient/views/screens/storefront.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import 'package:provider/provider.dart';

void main() => runApp(SteamClientApp());

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Steam',
          theme: ThemeData(primarySwatch: Colors.blueGrey),
          color: HexColor('#213E57'),
          home: new StoreFront()),
    );
  }
}
