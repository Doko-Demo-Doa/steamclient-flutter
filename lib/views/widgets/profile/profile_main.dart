import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class ProfileMain extends StatelessWidget {
  final imgLink =
      'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg';

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width * 0.3;
    final buttonHeight = 40.0;

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
                    Row(children: <Widget>[
                      Text("Level  ", style: TextStyle(color: Colors.white, fontSize: 25)),
                      Container(
                        child: Text('53', style: TextStyle(color: Colors.white)),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(40)),
                      )
                    ]),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 9, horizontal: 0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: HexColor('222223'),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: NetworkImage(
                                'https://steamcommunity-a.akamaihd.net/public/images/badges/27_steamawardnominations/level04_54.png'),
                            width: 40,
                            height: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Steam Awards 2018',
                                  style: TextStyle(color: Colors.white),
                                  overflow: TextOverflow.ellipsis),
                              Text('100 XP',
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          child: FlatButton(
                              onPressed: () {},
                              color: HexColor('2c3648'),
                              child: Text('Edit Profile',
                                  style: TextStyle(color: Colors.white))),
                          width: buttonWidth,
                          height: buttonHeight,
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          Padding(padding: const EdgeInsets.all(12)),
          Text('Every treasure has its price',
              style: TextStyle(color: HexColor('#898989'))),
          Text('View more info', style: TextStyle(color: HexColor('#FFFFFF')))
        ],
      ),
    );
  }
}
