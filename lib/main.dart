import 'package:flutter/material.dart';
import 'package:steamclient/services/navigation_service.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import 'package:provider/provider.dart';

import 'package:steamclient/common/static_data.dart' as routes;
import 'package:steamclient/router.dart' as router;

import './locator.dart';

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
          navigatorKey: locator<NavigationService>().navigatorKey,
          onGenerateRoute: router.generateRoute,
          initialRoute: routes.StoreFrontRoute,
        ),
    );
  }
}
