import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
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
              color: Colors.black12),
          RaisedButton(
              child: Text('Redraw'),
              onPressed: () {
                _controller.repeat();
              })
        ],
      ),
    );
  }
}
