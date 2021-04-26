import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/auth/custom_input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.TUNGSTEN,
        padding: const EdgeInsets.only(top: 42),
        child: SingleChildScrollView(
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
              SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    CustomInput(hint: "Username"),
                    SizedBox(height: 15),
                    CustomInput(hint: "Password"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  height: 52,
                  width: double.infinity,
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.WHITE,
                    ),
                  ),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 22,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.BLUE,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: AppColors.BLUE),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
