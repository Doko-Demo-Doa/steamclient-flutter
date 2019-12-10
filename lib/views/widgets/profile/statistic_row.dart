import 'package:flutter/material.dart';

class StatisticRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          StatisticCell(),
          StatisticCell(),
          StatisticCell(),
          StatisticCell()
        ],
      ),
    );
  }
}

class StatisticCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('90'),
          Text('Games')
        ],
      ),
    );
  }
}
