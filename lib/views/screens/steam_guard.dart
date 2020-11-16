import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:steamclient/common/predefined_colors.dart';

class _SteamGuardState extends State {
  double progress = 100.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        if (progress <= 0.0) {
          progress = 100.0;
          return;
        }
        progress = progress - 10.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: AppColors.DARK,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '2K44Z',
            style: TextStyle(
              fontSize: 44,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: CircularPercentIndicator(
              radius: 210.0,
              lineWidth: 8.0,
              animation: true,
              animateFromLastPercent: true,
              animationDuration: 400,
              startAngle: 0,
              percent: (progress / 100),
              center: new Text(
                "0:${(progress.toInt() / 100).toString().replaceAll('.', '').padLeft(2, '0')}",
                style: TextStyle(color: Colors.white, fontSize: 42),
              ),
              backgroundColor: AppColors.DARK_GREY_BLUE,
              circularStrokeCap: CircularStrokeCap.round,
              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
              linearGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orange, Colors.yellow],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 120, maxWidth: 230),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsetsDirectional.only(top: 22)),
                FlatButton(
                  color: AppColors.DARK_BLUE_GREY,
                  onPressed: () {},
                  child: Text(
                    'Remove Device',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
                FlatButton(
                  color: AppColors.DARK_BLUE_GREY,
                  onPressed: () {},
                  child: Text(
                    'Help',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SteamGuard extends StatefulWidget {
  @override
  _SteamGuardState createState() {
    return _SteamGuardState();
  }
}
