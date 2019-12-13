import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class ProfileMain extends StatelessWidget {
  final imgLink =
      'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f6/f6efaf9edc241ab175714964792226cb217b5126_full.jpg';

  @override
  Widget build(BuildContext context) {
    final double AVATAR_SIZE = 140.0;

    return Container(
      color: PredefinedColors.DARK,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        children: <Widget>[
          // Left: avatar
          Column(
            children: <Widget>[
              Container(
                width: AVATAR_SIZE,
                height: AVATAR_SIZE,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: PredefinedColors.DIRTY_GREEN),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imgLink),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: PredefinedColors.DARK_BLUE_GREY),
                      borderRadius:
                          BorderRadius.all(new Radius.circular(20.0))),
                  margin: const EdgeInsetsDirectional.only(top: 14),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                  constraints: BoxConstraints(maxWidth: 160),
                  child: Text(
                    'Doko',
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ))
            ],
          ),
          // Right: Overview
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  // 2 statistic items:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            child: new Text("22",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            shape: CircleBorder(),
                            padding: const EdgeInsets.all(12),
                            borderSide:
                                BorderSide(color: PredefinedColors.RED_PURPLE),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 6)),
                          Text('Level', style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            child: new Text("24",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            shape: CircleBorder(),
                            padding: const EdgeInsets.all(12),
                            borderSide:
                                BorderSide(color: PredefinedColors.FAWN),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 6)),
                          Text('Badges', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.only(bottom: 10)),
                  Container(
                    padding: const EdgeInsets.only(right: 12),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Playing: Call of Duty Modern Warfare 3",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: PredefinedColors.PEA_GREEN),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(top: 12)),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Frankfuit, Germany",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: PredefinedColors.GUNMETAL),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              height: 24,
                              width: 60,
                              child: FlatButton(
                                color: PredefinedColors.DARK_BLUE_GREY,
                                padding: const EdgeInsets.all(4),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: PredefinedColors.METALLIC_BLUE)),
                                child: Text('Chat',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                            ),
                            SizedBox(
                              height: 24,
                              width: 60,
                              child: FlatButton(
                                color: PredefinedColors.DARK_BLUE_GREY,
                                padding: const EdgeInsets.all(4),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: PredefinedColors.METALLIC_BLUE)),
                                child: Text('More',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
