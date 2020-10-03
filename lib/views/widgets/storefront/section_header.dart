import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final text;
  SectionHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 12, 20, 12),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text(
            'Featured & Recommended',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: Icon(FluentIcons.access_time_24_regular),
            onPressed: () {
              print("Button pressed");
            },
          )
        ],
      ),
    );
  }
}
