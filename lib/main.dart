import 'package:flutter/material.dart';
import 'package:steamclient/views/screens/app_page.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import 'package:provider/provider.dart';

import 'package:steamclient/common/static_data.dart' as routes;
import 'package:steamclient/router.dart' as router;

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
          onGenerateRoute: router.generateRoute,
          initialRoute: routes.StoreFrontRoute,
        ),
    );
  }
}
