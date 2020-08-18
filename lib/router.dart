import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/common/static_data.dart' as routes;
import 'package:steamclient/views/screens/chat.dart';
import 'package:steamclient/views/screens/chat_threads.dart';
import 'package:steamclient/views/screens/login.dart';
import 'package:steamclient/views/screens/playground.dart';
import 'package:steamclient/views/screens/steam_guard.dart';
import 'package:steamclient/views/tab_layout.dart';

import 'package:steamclient/views/screens/app_page.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.SteamTablayout:
      return MaterialPageRoute(builder: (_) => SteamTablayout());

    case routes.PlaygroundRoute:
      return MaterialPageRoute(builder: (_) => Playground());
    case routes.SteamGuardRoute:
      return MaterialPageRoute(builder: (_) => SteamGuard());
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case routes.StoreFrontRoute:
      return MaterialPageRoute(builder: (_) => StoreFront());
    case routes.ChatThreadsRoute:
      return MaterialPageRoute(builder: (_) => ChatThreads());
    case routes.ChatRoute:
      return MaterialPageRoute(builder: (_) => Chat());
    case routes.ProfileRoute:
      return MaterialPageRoute(builder: (_) => Profile());
    case routes.AppPageRoute:
      var appId = settings.arguments as String;
      return MaterialPageRoute(builder: (_) => AppPage(appId));
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No path for ${settings.name}'),
                ),
              ));
  }
}
