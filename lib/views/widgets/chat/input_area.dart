import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class InputArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        decoration: BoxDecoration(
            color: PredefinedColors.ALMOST_BLACK,
            border: Border(
                top: BorderSide(
                    color: PredefinedColors.DARK_GREY_BLUE, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.image, color: Colors.white),
                onPressed: () {
                  print('Pick');
                }),
            Flexible(
                child: Container(
              color: PredefinedColors.DARK_GREY_BLUE,
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextField(
                style: TextStyle(color: Colors.white),
                autocorrect: false,
                inputFormatters: [LengthLimitingTextInputFormatter(40)],
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: const EdgeInsets.only(bottom: 15, left: 6)),
              ),
            )),
            IconButton(
                icon: Icon(Icons.send, color: PredefinedColors.METALLIC_BLUE),
                onPressed: () {
                  print('Send');
                }),
          ],
        ));
  }
}
