import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          decoration: BoxDecoration(color: HexColor('#141414')),
      child: ListView.builder(
        itemCount: 2000,
        itemBuilder: (ctx, index) {
          final maxWidth = MediaQuery.of(context).size.width;

          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 0, 22, 16),
                  color: Colors.yellow,
                  child: Image(
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images-ext-2.discordapp.net/external/7Pwwon3ALV0GsgZDKALhaQv-2zY4Ml77G8cl_OrfJDM/http/images.nintendolife.com/news/2019/06/nintendos_market_value_drops_by_usd1_billion_after_animal_crossing_switch_delay/large.jpg'
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Test user', textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
                      Text('CommentCommentComment', style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}
