import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/appbar/steam_appbar.dart';
import 'package:steamclient/views/widgets/market/market_item.dart';
import 'package:steamclient/views/widgets/market/top_item.dart';

const sampleData = [
  {
    'name': 'Transversant Soul',
    'game': 'Dota 2',
    'asset': 'transversant_soul.png',
    'price': 3.99
  },
  {
    'name': 'Man Co. Supply Key',
    'game': 'Team Fortress 2',
    'asset': 'supply_key.png',
    'price': 2.99
  },
  {
    'name': 'Staff of Divine Ascension',
    'game': 'Dota 2',
    'asset': 'staff_of_divine_ascension.png',
    'price': 23.99
  },
  {
    'name': 'Halloween Chest',
    'game': 'Counter Strike: Global Offensive',
    'asset': 'halloween_chest.png',
    'price': 23.99
  },
  {
    'name': 'Fracture Case',
    'game': 'Counter Strike: Global Offensive',
    'asset': 'fracture_case.png',
    'price': 23.99
  },
];

class SteamMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = new List<int>.generate(20, (i) => i + 1);
    var displayList = [];
    list.forEach((element) {
      displayList.addAll(sampleData);
    });

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
        padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            var e = displayList[index];
            if (index == 0) {
              return TopItem(
                icon: Icon(
                  FluentIcons.apps_28_regular,
                  color: AppColors.SECONDARY_TEXT,
                ),
                text: 'My inventory',
              );
            }
            if (index == 1) {
              return TopItem(
                icon: Icon(
                  FluentIcons.collections_24_filled,
                  color: AppColors.SECONDARY_TEXT,
                ),
                text: 'Confirmations',
              );
            }
            if (index == 2) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                          color: AppColors.SECONDARY_TEXT, fontSize: 17),
                    ),
                    Icon(
                      FluentIcons.chevron_down_20_filled,
                      color: AppColors.SECONDARY_TEXT,
                    ),
                  ],
                ),
              );
            }
            return MarketItem(
              title: e['name'],
              game: e['game'],
              price: e['price'],
              assetName: e['asset'],
            );
          },
        ),
      ),
    );
  }
}
