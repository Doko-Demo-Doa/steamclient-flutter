import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/common/static_data.dart' as routes;
import 'package:steamclient/views/screens/profile.dart';
import 'package:steamclient/views/screens/storefront.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.StoreFrontRoute:
      return MaterialPageRoute(builder: (context) => StoreFront());
    case routes.ProfileRoute:
      return MaterialPageRoute(builder: (context) => Profile());
    default:
      return MaterialPageRoute(builder: (context) => StoreFront());
  }
}
