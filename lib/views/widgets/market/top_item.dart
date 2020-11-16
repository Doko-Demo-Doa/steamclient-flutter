import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

const itemHeight = 54.0;
const itemRadius = 8.0;

class TopItem extends StatelessWidget {
  final Icon icon;
  final String text;

  TopItem({@required this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: AppColors.CHARCOAL_GREY,
        borderRadius: BorderRadius.all(Radius.circular(itemRadius)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 5), // changes position of shadow
          )
        ],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Container(
              height: double.maxFinite,
              width: itemHeight,
              margin: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                color: AppColors.GUNMETAL_LIGHT,
                borderRadius: BorderRadius.all(Radius.circular(itemRadius)),
              ),
              child: icon,
            ),
            Expanded(
              child: Text(
                this.text,
                style: TextStyle(
                  color: AppColors.LIGHT_GREY_BLUE,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(
              FluentIcons.chevron_right_28_regular,
              color: AppColors.SECONDARY_TEXT,
            ),
          ],
        ),
      ),
    );
  }
}
