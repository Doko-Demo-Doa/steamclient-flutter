import 'package:flutter/material.dart';

class OnlineFriends extends StatelessWidget {
  final onlineF = [
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/bb/bb4a5af734ea86992bdc3cb73b91512a3f68fc70_full.jpg',
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/47/47a1db8e26ff97ce5deef7be0cb6bb80b2828b88_full.jpg',
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/2e/2ea6ba8b06a50e20d99aa4944ca41c71bbdc4ca5_full.jpg',
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/223789bbe53b15f3efdb53d4f865c335150b1751_full.jpg',
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/b5/b5258414fe4a310dee62ff07028dc534fc3de076_full.jpg',
    'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/92/922746ec18971973fcfd82a34414bd3f40d7d6c7_full.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final imgSize = 80.0;
    List<Widget> ofList = onlineF.map((item) {
      return Padding(
          child: Container(
              width: imgSize,
              height: imgSize,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain, image: NetworkImage(item)))),
          padding: const EdgeInsets.only(right: 12));
    }).toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.all(12)),
          Text('Online Friends',
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
