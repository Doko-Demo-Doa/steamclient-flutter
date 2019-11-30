import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class SteamGuard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 43),
      color: PredefinedColors.DARK,
      child: Column(
        children: <Widget>[
          Text('2K44Z', style: TextStyle(fontSize: 54, color: Colors.white)),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 30),
          ),
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 5.0,
            percent: 0.4,
            center: new Text("100%", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.grey,
            progressColor: PredefinedColors.DUSTY_ORANGE,
            circularStrokeCap: CircularStrokeCap.round,
          )
        ],
      ),
    );
  }
}
