import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class _CustomSearchBarState extends State<SearchBar> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: HexColor('415d6f'))),
      child: Material(
        child: TextField(
            onTap: () {
              print('On tap');
            },
            controller: textController,
            decoration: InputDecoration(
                hintText: 'Search the store',
                border: InputBorder.none,
                filled: true,
                fillColor: HexColor('70a2c0'),
                contentPadding: const EdgeInsets.all(8.0))),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}
