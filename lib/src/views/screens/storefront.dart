import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topBar = Text("MMM");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
      ),
    );
  }
}