import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topBar = new AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: new Icon(Icons.camera_alt),
      title: SizedBox(
        height: 35.0,
        child: Image.asset('../assets/images/insta_logo.png'),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        )
      ],
    );

    return new Scaffold(
      appBar: topBar,
      body: ,
    )
  }
}
