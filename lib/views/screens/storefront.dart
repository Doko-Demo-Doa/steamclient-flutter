import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/views/widgets/drawer/custom_drawer.dart';
import 'package:steamclient/views/widgets/storefront/search_bar.dart';
import 'package:steamclient/views/widgets/storefront/featured_content.dart';
import 'package:steamclient/views/widgets/storefront/carousel.dart';
import 'package:steamclient/views/widgets/hex_color.dart';
import 'package:steamclient/views/widgets/storefront/section_header.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(child: new CustomDrawer()),
      appBar: AppBar(
        backgroundColor: HexColor('#171a21'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Test',
            onPressed: () => {_scaffoldKey.currentState.openDrawer()}),
        title: SearchBar(),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              tooltip: 'Search',
              onPressed: () => {_scaffoldKey.currentState.openDrawer()}),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: HexColor('#213E57')),
        child: Column(
          children: <Widget>[
            SectionHeader(),
            Carousel()
          ],
        ),
      ),
    );
  }
}
