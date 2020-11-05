import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/appbar/steam_appbar.dart';

class SteamMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SteamAppBar(
        titleText: 'Market',
        actions: [
          IconButton(
            tooltip: 'Main Store',
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
        ],
      ),
    );
  }
}
