import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 400,
        itemBuilder: (ctx, index) {
          final count = index + 1;
          return Text('This is a text ' + count.toString());
        },
      ),
    );
  }
}
