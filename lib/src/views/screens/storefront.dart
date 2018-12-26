import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/src/views/widgets/storefront/featured_content.dart';
import 'package:steamclient/src/views/widgets/storefront/carousel.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: RichText(
          text: TextSpan(
            text: 'Steam'
          ),
        ),
        backgroundColor: Colors.red,
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: new Column(
          children: <Widget>[
            Flexible(child: new FeaturedContent()),
            Flexible(child: new Carousel())
          ],
        ),
      ),
    );
  }
}