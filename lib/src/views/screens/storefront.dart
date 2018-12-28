import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/src/views/widgets/storefront/featured_content.dart';
import 'package:steamclient/src/views/widgets/storefront/carousel.dart';
import 'package:steamclient/src/views/widgets/hex_color.dart';

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
        backgroundColor: HexColor('171a21'),
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: new Column(
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: TextField(
                onTap: () {
                  print('On tap');
                },
                decoration: InputDecoration(hintText: 'Lalaland', border: InputBorder.none, contentPadding: const EdgeInsets.all(20.0))
              ),
            ),
            Flexible(child: new FeaturedContent()),
            Flexible(child: new Carousel())
          ],
        ),
      ),
    );
  }
}