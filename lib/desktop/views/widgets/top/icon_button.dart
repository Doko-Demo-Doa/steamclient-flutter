import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (PointerEvent e) {
        print('xxx');
      },
      child: Container(
        child: Icon(Icons.menu),
        width: 40,
        height: 40,
      ),
    );
  }
}
