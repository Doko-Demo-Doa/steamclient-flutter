import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 400,
        itemBuilder: (ctx, index) {
          final count = index + 1;
          final maxWidth = MediaQuery.of(context).size.width;
          double commentMaxWidth = MediaQuery.of(context).size.width * 0.8;

          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  child: Image(
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/30/30f413ae08fab9dbda8cc0617ba8c960dc025f61.jpg'),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: commentMaxWidth),
                  child: Column(
                    children: <Widget>[
                      Text('Tak-kun'),
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
