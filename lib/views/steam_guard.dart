import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class SteamGuard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: PredefinedColors.DARK,
      child: Column(
        children: <Widget>[
          Text('2K44Z'),
          CircularProgressIndicator(
            value: 24,
            backgroundColor: PredefinedColors.DARK,
          )
        ],
      ),
    );
  }
}
