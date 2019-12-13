import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/profile/recently_played_games.dart';
import 'package:steamclient/views/widgets/profile/statistic_row.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;
import '../widgets/profile/profile_main.dart';

class ProfileWidgetState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: PredefinedColors.DARK,
        child: SingleChildScrollView(
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              ProfileMain(),
              StatisticRow(),
              RecentlyPlayedGames(),
              RecentlyPlayedGames()
            ],
          ),
        ));
  }
}

class Profile extends StatefulWidget {
  @override
  ProfileWidgetState createState() => new ProfileWidgetState();
}
