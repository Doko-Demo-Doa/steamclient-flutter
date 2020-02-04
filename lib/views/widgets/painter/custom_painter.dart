import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:steamclient/views/widgets/painter/drawing_points.dart';

class DrawingPainter extends CustomPainter {
 List<DrawingPoints> pointsList;
  List<Offset> offsetPoints = List();

  DrawingPainter({this.pointsList});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      var ti = pointsList[i];
      if (pointsList[i] != null && pointsList[i + 1] != null) {
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points, pointsList[i].paint);
      } else if (pointsList[i] != null && pointsList[i + 1] == null) {
        offsetPoints.clear();
        offsetPoints.add(pointsList[i].points);
        offsetPoints.add(Offset(ti.points.dx, ti.points.dy));
        canvas.drawPoints(PointMode.points, offsetPoints, ti.paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
