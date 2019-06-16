import 'package:flutter/material.dart';
import 'package:steamclient/utils/utils_colors.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class DrawerExpansionWidgetState extends State<DrawerExpansionWidget> {
  String _name = '';
  List<String> _subItems = [];

  DrawerExpansionWidgetState(this._name, this._subItems);

  @override
  Widget build(BuildContext context) {
    List<Widget> subItemsWidgets =
      _subItems.map((item) => new GestureDetector(
        onTap: () => {
          print('Go')
        },
        child: new Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 38),
          child: Text(item, style: TextStyle(color: CommonColors.COLOR_SECONDARY_TEXT)),
        ),
      )).toList();

    return new Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: HexColor('#242B35')),
        bottom: BorderSide(color: HexColor('#242B35')),
      )),
      child: ExpansionTile(
        backgroundColor: HexColor('#192533'),
        title: Text(_name,
            style: TextStyle(
                color: CommonColors.COLOR_SECONDARY_TEXT, fontSize: 20)),
        children: subItemsWidgets,
      ),
    );
  }
}

class DrawerExpansionWidget extends StatefulWidget {
  String _name = '';
  List<String> _subItems = [];

  DrawerExpansionWidget(this._name, this._subItems, {Key key})
      : super(key: key);

  @override
  DrawerExpansionWidgetState createState() {
    return DrawerExpansionWidgetState(_name, _subItems);
  }
}
