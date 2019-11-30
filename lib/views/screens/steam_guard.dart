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
          Text('2K44Z', style: TextStyle(fontSize: 54, color: Colors.white, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 30),
          ),
          CircularPercentIndicator(
            radius: 220.0,
            lineWidth: 8.0,
            startAngle: 180,
            percent: 0.7,
            center: new Text("0:25", style: TextStyle(color: Colors.white, fontSize: 42)),
            backgroundColor: PredefinedColors.DARK_GREY_BLUE,
            progressColor: PredefinedColors.DUSTY_ORANGE,
            circularStrokeCap: CircularStrokeCap.round,
          )
        ],
      ),
    );
  }
}
