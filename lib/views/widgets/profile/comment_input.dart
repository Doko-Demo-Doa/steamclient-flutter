import 'package:flutter/cupertino.dart';

class CommentInput extends StatelessWidget {
  final Widget child;

  CommentInput({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}