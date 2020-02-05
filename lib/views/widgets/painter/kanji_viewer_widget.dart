import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/painter/kanji_viewer_painter.dart';

class KanjiViewer extends StatefulWidget {
  @override
  _KanjiViewerState createState() {
    throw _KanjiViewerState();
  }
}

class _KanjiViewerState extends State<KanjiViewer>
    with SingleTickerProviderStateMixin {
  double _fraction = 0.0;
  AnimationController controller;
  Animation<double> animation;

  final Path path;
  _KanjiViewerState({this.path});

  var rawPathList = List<Path>();
  var rawPathLengthList = List<double>();

  List<Path> pathList = List<Path>();
  var pathMeasureList = List<double>();

  // Animation.
  var animRunning = false;
  var animStarted = false;

  var paint = Paint()
    ..color = Colors.black87
    ..isAntiAlias = true;

  int strokeIndex = 0;
  int strokeCount;

  var autoRun = true;
  var autoRunDelay = 500;

  var animate = true;
  var strokeColor = Colors.black;
  var highlightedColor = Colors.red;

  // Used for animated stroke.
  var animPaint = Paint();

  // Used to paint the dot indicator at currently animated position.
  var fingerPaint = Paint()..style = PaintingStyle.fill;

  // Used to draw the kanji in background in a lighter way (to see what'll be drawn).
  var lightPaint = Paint();

  SplayTreeSet<int> highlightedStrokeList = SplayTreeSet<int>();

  bool isKanjiDrawn() {
    return strokeCount == strokeIndex;
  }

  void clear() {
    rawPathList.clear();
    rawPathLengthList.clear();
    highlightedStrokeList.clear();
    pathList.clear();
    pathMeasureList.clear();
    strokeIndex = 0;
  }

  void startAnimation() {
    controller.stop();
    controller.reset();
    controller.repeat(period: Duration(seconds: 5));
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _fraction = animation.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter:
          KanjiViewerPainter(animationController: this.controller),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
