import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/views/widgets/storefront/carousel.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;
import 'package:steamclient/views/widgets/storefront/section_header.dart';
import 'package:steamclient/views/widgets/storefront/section_onsale.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: PredefinedColors.DARK),
      child: SingleChildScrollView(
        child: Column(
        children: <Widget>[SectionHeader('Test'), Carousel(), SectionOnsale()],
      ),
      ),
    );
  }
}
