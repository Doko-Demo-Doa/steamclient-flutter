import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class ProfileMain extends StatelessWidget {
  final imgLink =
      'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(12, 36, 12, 12),
      decoration: BoxDecoration(color: HexColor('272d3b')),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Doko',
                  style: TextStyle(fontSize: 26, color: Colors.white))),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Quân, Hà Nội - Việt Nam',
                  style: TextStyle(fontSize: 16, color: HexColor('898989')))),
          Row(
            children: <Widget>[
              Image(image: NetworkImage(imgLink), width: 120, height: 120),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Column(
                  children: <Widget>[
                    Text('Level 53'),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: HexColor('222223'), borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: NetworkImage(
                                'https://steamcommunity-a.akamaihd.net/public/images/badges/27_steamawardnominations/level04_54.png'),
                            width: 60,
                            height: 60,
                          ),
                          Column(
                            children: <Widget>[
                              Text('Steam Awards 2018',
                                  overflow: TextOverflow.ellipsis),
                              Text('100 XP')
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () => {},
                          color: HexColor('2c3648'),
                          child: Text('Nah',
                              style: TextStyle(color: Colors.white)),
                        ),
                        RaisedButton.icon(
                          onPressed: () => {},
                          color: HexColor('2c3648'),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          label: Text(''),
                          icon: Icon(Icons.ac_unit),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          Text('Every treasure has its price',
              style: TextStyle(color: HexColor('#898989'))),
          Text('View more info', style: TextStyle(color: HexColor('#FFFFFF')))
        ],
      ),
    );
  }
}
