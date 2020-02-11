import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load('.env');

  runApp(SteamClientApp());
}

class SteamClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Colors.red,
        ),
        title: 'Steam',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey, backgroundColor: Colors.grey[800]),
      );
  }
}
