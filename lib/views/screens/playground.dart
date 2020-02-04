import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

  @override
  Widget build(BuildContext context) {
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
