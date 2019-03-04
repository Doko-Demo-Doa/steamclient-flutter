import 'package:flutter/material.dart';
import 'package:steamclient/views/home_list.dart';

class SteamBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[Flexible(child: HomeList())],
    );
  }
}
