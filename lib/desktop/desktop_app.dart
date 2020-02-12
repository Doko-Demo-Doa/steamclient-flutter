import 'package:flutter/material.dart';
import 'package:steamclient/desktop/views/widgets/top/menu_bar.dart';

class DesktopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Colors.green,
          width: 1024,
          height: 768,
          child: Column(
            children: <Widget>[
              MenuBar()
            ],
          ),
        ),
        title: 'Steam',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey, backgroundColor: Colors.grey[800]),
      );
  }
}
