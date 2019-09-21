import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/views/widgets/storefront/search_bar.dart';
import 'package:steamclient/views/widgets/storefront/featured_content.dart';
import 'package:steamclient/views/widgets/storefront/carousel.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('171a21'),
        centerTitle: true,
        title: SearchBar(),
      ),
    );
  }
}
