import 'package:flutter/material.dart';
import 'package:steamclient/utils/utils_colors.dart';

// New Releases, Specials, Free Games, By User Tags buttons.
class TypeButton extends StatelessWidget {
  final title;
  final onPressed;
  TypeButton(this.title, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: RaisedButton(
          color: CommonColors.COLOR_MUTED_BLUE,
          textColor: CommonColors.COLOR_LIGHT_GREY_BLUE,
          autofocus: false,
          onPressed: this.onPressed,
          child: Text(this.title),
        ));
  }
}

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.bottomCenter,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              TypeButton('New Releases', onPressed: () => Navigator.pushNamed(context, "AppPage")),
              TypeButton('Specials', onPressed: () => print(34343)),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround),
            Row(children: <Widget>[
              TypeButton('Free Games', onPressed: () => print(34343)),
              TypeButton('By User Tags', onPressed: () => print(34343))
            ], mainAxisAlignment: MainAxisAlignment.spaceAround)
          ],
        ));
  }
}
