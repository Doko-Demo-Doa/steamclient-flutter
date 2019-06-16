import 'package:flutter/material.dart';
import 'package:steamclient/utils/utils_colors.dart';
import 'package:steamclient/views/widgets/hex_color.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(top: 16),
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
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: CommonColors.COLOR_AVOCADO)),
                      child: Image(
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images-ext-2.discordapp.net/external/7Pwwon3ALV0GsgZDKALhaQv-2zY4Ml77G8cl_OrfJDM/http/images.nintendolife.com/news/2019/06/nintendos_market_value_drops_by_usd1_billion_after_animal_crossing_switch_delay/large.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          new Text('Test User',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          new Text('  25 Dec, 2018 @ 5:24am',
                              style: TextStyle(color: CommonColors.COLOR_SLATE, fontSize: 13))
                        ], crossAxisAlignment: CrossAxisAlignment.end),
                        Padding(padding: const EdgeInsets.only(bottom: 3)),
                        Text(
                            'May this Christmas bring to your family the promise of a better tomorrow; full of love and hope. Merry Christmas my friend!',
                            style: TextStyle(color: CommonColors.COLOR_COOL_GRAY, fontSize: 12)),
                        Padding(padding: const EdgeInsets.only(bottom: 26)),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )
    );
  }
}
