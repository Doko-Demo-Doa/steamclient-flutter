import 'package:flutter/material.dart';

class RecentlyPlayedGames extends StatelessWidget {
  final gameList = [
    'Call of Duty: Modern Warfare 2',
    'Metro Exodus',
    'Red Dead Redemption 2',
    'Nier Automata',
    'GENSOU Skydrift'
  ];
  final List imgGameList = [
    'https://steamcdn-a.akamaihd.net/steam/apps/10180/capsule_616x353.jpg?t=1346116649',
    'https://steamcdn-a.akamaihd.net/steam/apps/412020/capsule_616x353.jpg?t=1528703002',
    'https://steamcdn-a.akamaihd.net/steam/apps/1174180/capsule_616x353.jpg?t=1574881682',
    'https://steamcdn-a.akamaihd.net/steam/apps/524220/capsule_616x353.jpg?t=1551189877',
    'https://steamcdn-a.akamaihd.net/steam/apps/1065260/capsule_616x353.jpg?t=1574866875'
  ];

  final imageWidth = 150.0;

  @override
  Widget build(BuildContext context) {
    List<Widget> gList = imgGameList.map((item) {
      return Padding(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image.network(item, width: imageWidth),
              Container(
                height: 60,
                width: imageWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.black87,
                      ],
                    )),
              )
            ],
          ),
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
              children: gList,
            ),
          ),
          Padding(padding: const EdgeInsets.all(6)),
        ],
      ),
    );
  }
}
