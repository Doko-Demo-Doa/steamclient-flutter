import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  BaseScaffold({
    Key key,
    bool resizeToAvoidBottomInset,
    Color backgroundColor,
    Widget body,
  }) : super(
          key: key,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          backgroundColor: backgroundColor,
          body: body,
        );
}
