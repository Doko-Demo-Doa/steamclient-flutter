import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_kanji_view/flutter_kanji_view.dart';
import 'package:flutter_kanji_view/fklib/drawing_widget.dart';

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() {
    return _PlaygroundState();
  }
}

class _PlaygroundState extends State<Playground>
    with SingleTickerProviderStateMixin {
  var run = true;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    var ch = ('唯').codeUnitAt(0).toRadixString(16);
    print(ch);
  }

  @override
  Widget build(BuildContext context) {
    var x = '0' + 09924.toString();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 400,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            color: Colors.green,
            child: KanjiViewer.svg(
              "assets/vectors/" + x + ".svg",
              controller: _controller,
              scaleToViewport: true,
              duration: new Duration(seconds: 3)
            ),
          ),
          RaisedButton(
            child: Text('Redraw'),
            onPressed: () {
            _controller.reset();
            _controller.forward();
          })
        ],
      ),
    );
  }
}
