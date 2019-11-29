import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/common/static_data.dart' as routes;
import 'package:steamclient/views/screens/app_page.dart';
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.StoreFrontRoute:
      return MaterialPageRoute(builder: (_) => StoreFront());
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
