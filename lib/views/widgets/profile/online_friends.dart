import 'package:flutter/material.dart';

class OnlineFriends extends StatelessWidget {
  final onlineF = ['GhostFace', 'Baba Yaga'];
  @override
  Widget build(BuildContext context) {
    final imgSize = 80.0;
    List<Widget> ofList = onlineF.map((item) {
      return Padding(
          child: Container(
              width: imgSize,
              height: imgSize,
              decoration:
                  BoxDecoration(color: Colors.white10, shape: BoxShape.circle)),
          padding: const EdgeInsets.only(right: 12));
    }).toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.all(12)),
          Text('Recently Played',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Padding(padding: const EdgeInsets.all(6)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ofList,
            ),
          ),
          Padding(padding: const EdgeInsets.all(6)),
        ],
      ),
    );
  }
}
