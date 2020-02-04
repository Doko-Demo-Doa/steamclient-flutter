import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/utils/svg_helper.dart';
import 'package:steamclient/views/widgets/painter/custom_painter.dart';
import 'package:steamclient/views/widgets/painter/drawing_points.dart';

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

  @override
  Widget build(BuildContext context) {
    svgHelper.buildPath("M36.25,19c4.12-0.62,31.49-4.78,33.25-5c4-0.5,5.5,1.12,5.5,4.75c0,2.76-0.5,49.25-0.5,69.5c0,13-6.25,4-8.75,1.75");

    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            setState(() {
              RenderBox renderBox = context.findRenderObject();
              points.add(DrawingPoints(
                  points: renderBox.globalToLocal(details.globalPosition),
                  paint: Paint()
                    ..strokeCap = strokeCap
                    ..isAntiAlias = true
                    ..color = Colors.black
                    ..strokeWidth = strokeWidth
                ));
            });
          });
        },
        onPanEnd: (details) {
          setState(() {
            points.add(null);
          });
        },
        child: CustomPaint(
          size: Size.infinite,
          painter: DrawingPainter(
            pointsList: points
          ),
        ),
      ),
    );
  }
}
