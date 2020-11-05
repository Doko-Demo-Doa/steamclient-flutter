import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

class SteamAppBar extends PreferredSize {
  final String titleText;
  final Widget bottomWidget;
  final List<Widget> actions;

  SteamAppBar({
    Key key,
    Widget title,
    this.bottomWidget,
    @required this.titleText,
    @required this.actions,
  }) : super(
          key: key,
          preferredSize: Size.fromHeight(104.0),
          child: AppBar(
            elevation: 0,
            title: Text(
              titleText,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(46.0),
              child: Container(
                color: AppColors.IRON,
                child: bottomWidget,
              ),
            ),
            actions: actions,
            backgroundColor: AppColors.CHARCOAL_GREY,
            centerTitle: false,
          ),
        );
}
