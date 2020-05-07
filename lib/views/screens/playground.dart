import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:steamclient/views/widgets/limited_popupmenu/limited_popupmenu.dart';

class Playground extends StatefulWidget {
  @override
  _PlaygroundState createState() {
    return _PlaygroundState();
  }
}

class _PlaygroundState extends State<Playground>
    with SingleTickerProviderStateMixin {
  String _value = '2';
  List<Map<String, String>> data = [
    {'value': '1', 'label': 'One'},
    {'value': '2', 'label': 'Two'},
    {'value': '3', 'label': 'Three'},
    {'value': '4', 'label': 'Four'},
    {'value': '5', 'label': 'Five'},
    {'value': '6', 'label': 'Six'},
    {'value': '7', 'label': 'Seven'},
    {'value': '8', 'label': 'Eight'},
    {'value': '9', 'label': 'Nine'},
    {'value': '10', 'label': 'Ten'},
  ];

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
            child: LimitedPopupMenu(),
          ),
          RaisedButton(child: Text('Redraw'), onPressed: () {})
        ],
      ),
    );
  }
}
