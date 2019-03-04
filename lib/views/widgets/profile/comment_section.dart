import 'package:flutter/material.dart';
import 'dart:math';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 2000,
        itemBuilder: (ctx, index) {
          final count = index + 1;
          Random rnd;
          int min = 400;
          int max = 600;
          rnd = new Random();
          final r = min + rnd.nextInt(max - min);

          final maxWidth = MediaQuery.of(context).size.width;
          double commentMaxWidth = MediaQuery.of(context).size.width * 0.8;

          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
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
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: commentMaxWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Test user', textAlign: TextAlign.left),
                      Text(
                          'CommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentComment')
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
