import 'package:flutter/material.dart';
import 'package:steamclient/desktop/views/widgets/top/icon_button.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.black45,
      child: Row(
        children: <Widget>[
          CustomIconButton()
        ],
      ),
    );
  }
}