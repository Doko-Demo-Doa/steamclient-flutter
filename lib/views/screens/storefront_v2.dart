import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:steamclient/views/widgets/storefront/carousel/carousel_v2.dart';
import 'package:steamclient/views/widgets/storefront/section_header.dart';
import 'package:steamclient/views/widgets/storefront/section_onsale.dart';
import 'package:steamclient/views/widgets/storefront/scrollable_tab_bar.dart';

class StoreFrontV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Store',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(44.5),
          child: Container(
            color: AppColors.IRON,
            child: ScrollableTabBar(),
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Store',
            icon: Icon(
              FluentIcons.apps_28_regular,
              color: AppColors.SECONDARY_TEXT,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: Icon(
              FluentIcons.search_28_filled,
              color: AppColors.SECONDARY_TEXT,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Cart',
            icon: Icon(
              FluentIcons.cart_24_regular,
              color: AppColors.SECONDARY_TEXT,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: AppColors.CHARCOAL_GREY,
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColors.DARK),
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            children: <Widget>[
              Carousel(),
              SectionHeader('Featured & Recommended'),
              SectionOnsale(''),
              SectionHeader('Special Offers'),
              SectionOnsale('')
            ],
          ),
        ),
      ),
    );
  }
}
