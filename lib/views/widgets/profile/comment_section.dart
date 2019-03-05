import 'package:flutter/material.dart';
import 'dart:math';
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
          Random rnd;
          int min = 400;
          int max = 600;
          rnd = new Random();
          final r = min + rnd.nextInt(max - min);

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
                        'https://source.unsplash.com/random/600x' +
                            r.toString()),
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
