import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

class SteamAppBar extends PreferredSize {
  final String titleText;
  final List<Widget> actions;

  static const appBarHeight = 56.0;

  SteamAppBar({
    Key key,
    Widget title,
    @required this.titleText,
    @required this.actions,
  }) : super(
          key: key,
          preferredSize: Size.fromHeight(appBarHeight),
          child: AppBar(
            elevation: 0,
            title: Text(
              titleText,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.normal),
            ),
            actions: actions,
            backgroundColor: AppColors.CHARCOAL_GREY,
            centerTitle: false,
          ),
        );

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
