import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/views/widgets/storefront/search_bar.dart';
import 'package:steamclient/views/widgets/storefront/featured_content.dart';
import 'package:steamclient/views/widgets/storefront/carousel.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Image(
          image: NetworkImage(
              'https://steamstore-a.akamaihd.net/public/shared/images/responsive/header_logo.png'),
        ),
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        backgroundColor: HexColor('171a21'),
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: new Column(
          children: <Widget>[SearchBar(), FeaturedContent(), Carousel()],
        ),
      ),
    );
  }
}
