import 'dart:async';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/appbar/steam_appbar.dart';
import 'package:steamclient/views/widgets/market/top_item.dart';

const text1 =
    'Please note that current screen is just a mockup and not a real authenticator. Above code is not actually usable with your Steam account.';

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
    Scaffold();
    return Scaffold(
      appBar: SteamAppBar(
        titleText: 'Steam Guard',
        actions: [],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        color: AppColors.DARK,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                text1,
                style: TextStyle(color: AppColors.WHITE),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              alignment: Alignment.centerLeft,
              child: Text(
                'Tip: Water is wet.',
                style: TextStyle(color: AppColors.BLUE),
              ),
            ),
            Column(
              children: [
                TopItem(
                  icon: Icon(
                    FluentIcons.calendar_cancel_24_regular,
                    color: AppColors.SECONDARY_TEXT,
                  ),
                  text: 'Remove authenticator',
                ),
                TopItem(
                  icon: Icon(
                    FluentIcons.lock_24_regular,
                    color: AppColors.SECONDARY_TEXT,
                  ),
                  text: 'My Recovery Code',
                ),
                TopItem(
                  icon: Icon(
                    FluentIcons.question_28_regular,
                    color: AppColors.SECONDARY_TEXT,
                  ),
                  text: 'Help',
                ),
              ],
            ),
          ],
        ),
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
