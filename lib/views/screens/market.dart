import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/appbar/steam_appbar.dart';
import 'package:steamclient/views/widgets/market/top_item.dart';

class SteamMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DARK,
      appBar: SteamAppBar(
        titleText: 'Market',
        actions: [
          IconButton(
            tooltip: 'Filter',
            icon: Icon(
              FluentIcons.filter_28_filled,
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopItem(
                icon: Icon(
                  FluentIcons.apps_28_regular,
                  color: AppColors.SECONDARY_TEXT,
                ),
              ),
              TopItem(
                icon: Icon(
                  FluentIcons.collections_24_filled,
                  color: AppColors.SECONDARY_TEXT,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
