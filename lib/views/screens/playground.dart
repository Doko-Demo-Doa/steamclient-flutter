import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() {
    return _PlaygroundState();
  }
}

class _PlaygroundState extends State<Playground>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    initializeDateFormatting();

    print(DateFormat('EEEEE', 'id').format(DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 400,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            color: Colors.white,
          ),
          RaisedButton(child: Text('Redraw'), onPressed: () {})
        ],
      ),
    );
  }
}
