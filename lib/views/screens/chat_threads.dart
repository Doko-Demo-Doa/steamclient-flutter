import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/models/user.dart';

class ChatThreads extends StatelessWidget {
  List<User> generateData() {
    var u1 = new User();
    u1.avatar =
        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/90/904720d717c77332073449c522ea87304399797c_full.jpg';
    u1.username = 'F=14B';
    u1.playing = 'DCS World Steam';

    var u2 = new User();
    u2.avatar =
        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/19/19becb81fd681a89fc321ccc535bb21ad5c1d806_full.jpg';
    u2.username = 'Intel';
    u2.playing = 'World of Warships';

    var u3 = new User();
    u3.avatar =
        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d9/d9f3ca9ba12a2d140fb00a4c25fe01acc5fe0402_full.jpg';
    u3.username = '夢夢';
    u3.playing = 'Half-life 2';

    var u4 = new User();
    u4.avatar =
        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/df/dfce4a6e90f0379a0f623b5003c1da6dd1bb07f0_full.jpg';
    u4.username = 'Scientific Witchery';
    u4.playing = '';

    List<User> resp = new List();
    resp.add(u1);
    resp.add(u2);
    resp.add(u3);
    resp.add(u4);
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    var list = generateData();
    return Container(
      color: AppColors.ALMOST_BLACK,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctxt, int index) {
          var item = list[index];
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'Chat');
              },
              splashColor: AppColors.DARK_BLUE,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.DARK_BLUE_GREY,
                      width: 1,
                    ),
                  ),
                ),
                height: 68,
                child: Flex(
                  mainAxisSize: MainAxisSize.max,
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: item.playing == ''
                                ? AppColors.LIGHT_BLUE
                                : AppColors.ELECTRIC_LIME,
                            width: 3,
                          ),
                        ),
                      ),
                      child: Image.network(list[index].avatar),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item.username,
                            style: TextStyle(
                              color: item.playing == ''
                                  ? AppColors.LIGHT_BLUE
                                  : AppColors.VERY_PALE_GREEN,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            item.playing != '' ? item.playing : 'Online',
                            style: TextStyle(
                              color: item.playing != ''
                                  ? AppColors.ELECTRIC_LIME
                                  : AppColors.LIGHT_BLUE,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '02/01/2020',
                      style:
                          TextStyle(color: AppColors.POWDER_BLUE, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
