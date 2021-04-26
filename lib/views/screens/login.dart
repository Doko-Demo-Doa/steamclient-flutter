import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/common/predefined_colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.TUNGSTEN,
        padding: const EdgeInsets.only(top: 42),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(30, 46, 30, 38),
              child: Icon(
                FontAwesomeIcons.steam,
                color: AppColors.WHITE,
                size: 160,
              ),
            ),
            Text(
              "STEAM",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.WHITE,
              ),
            ),
            Text(
              "Mobile",
              style: TextStyle(
                fontSize: 26,
                color: AppColors.ALUMINIUM,
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.steam),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
