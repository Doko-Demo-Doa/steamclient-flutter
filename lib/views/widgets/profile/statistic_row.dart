import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class StatisticRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: PredefinedColors.DARK,
      child: Row(
        children: <Widget>[
          StatisticCell(96, 'Games'),
          StatisticCell(4, 'DLC'),
          StatisticCell(23, 'Wishlist'),
          StatisticCell(124, 'Friends')
        ],
      ),
    );
  }
}

class StatisticCell extends StatelessWidget {
  final number;
  final label;

  StatisticCell(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(number.toString(), style: TextStyle(color: PredefinedColors.LIGHT_NAVY_BLUE, fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(padding: const EdgeInsets.all(2)),
          Text(label, style: TextStyle(color: Colors.white, fontSize: 13))
        ],
      ),
    );
  }
}
