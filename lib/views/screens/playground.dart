import 'dart:io';

import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/utils/svg_helper.dart';
import 'package:steamclient/views/widgets/painter/custom_painter.dart';
import 'package:steamclient/views/widgets/painter/drawing_points.dart';
import 'package:steamclient/views/widgets/painter/kanji_viewer_painter.dart';
import 'dart:convert' show utf8;
import 'package:unicode/unicode.dart' as unicode;

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() {
    return _PlaygroundState();
  }
}

class _PlaygroundState extends State<Playground> {
  Color selectedColor = Colors.black;
  double strokeWidth = 3.0;
  List<DrawingPoints> points = List();
  double opacity = 1.0;

  StrokeCap strokeCap = Platform.isAndroid ? StrokeCap.butt : StrokeCap.round;

  var svgHelper = SVGHelper();
  var run = true;

  @override
  void initState() {
    super.initState();
    
    var ch = ('唯').codeUnitAt(0).toRadixString(16);
    print(ch);
  }

  @override
  Widget build(BuildContext context) {
    svgHelper.buildPath(
        "M36.25,19c4.12-0.62,31.49-4.78,33.25-5c4-0.5,5.5,1.12,5.5,4.75c0,2.76-0.5,49.25-0.5,69.5c0,13-6.25,4-8.75,1.75");

    return Scaffold(
      body: CustomPaint(
          child: Container(
        height: 300.0,
        child: AnimatedDrawing.svg(
          "assets/vectors/0552f.svg",
          run: this.run,
          duration: Duration(seconds: 3),
          onFinish: () {
            this.run = false;
          },
        ),
      )),
    );
  }
}
