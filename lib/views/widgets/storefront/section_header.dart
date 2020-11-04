import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

class SectionHeader extends StatelessWidget {
  final text;
  SectionHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 6, 20, 0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.text,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: Icon(
              FluentIcons.arrow_forward_16_regular,
              color: AppColors.BLUE,
            ),
            onPressed: () {
              print("Button pressed");
            },
          ),
        ],
      ),
    );
  }
}
