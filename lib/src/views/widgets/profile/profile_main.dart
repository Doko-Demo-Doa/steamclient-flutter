import 'package:flutter/material.dart';
import 'package:steamclient/src/views/widgets/hex_color.dart';

class ProfileMain extends StatelessWidget {
  final imgLink = 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: HexColor('272d3b')),
      child: Column(
        children: <Widget>[
          Image(image: NetworkImage(imgLink)),
          Text('Doko', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
        ],
      ),
    );
  }
}
