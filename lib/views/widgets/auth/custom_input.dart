import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

class CustomInput extends StatelessWidget {
  final String hint;

  CustomInput({this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: TextField(
        style: TextStyle(
          color: AppColors.WHITE,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          focusColor: AppColors.DIRTY_GREEN,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.BLUE,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.SLATE_GREY,
              width: 1.5,
            ),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.GUNMETAL_LIGHT),
        ),
      ),
    );
  }
}
