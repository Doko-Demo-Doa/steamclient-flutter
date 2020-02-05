import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steamclient/views/widgets/kanji/flutter_kanji_view.dart';

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() {
    return _PlaygroundState();
  }
}

class _PlaygroundState extends State<Playground> {
  var run = true;

  @override
  void initState() {
    super.initState();

    var ch = ('唯').codeUnitAt(0).toRadixString(16);
    print(ch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedDrawing.svg(
        "assets/vectors/0552f.svg",
        run: this.run,
        duration: new Duration(seconds: 3),
        onFinish: () => setState(() {
          this.run = false;
        }),
      ),
    );
  }
}
