import 'package:flutter/cupertino.dart';

class FeaturedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image(
      height: 180,
      fit: BoxFit.fitHeight,
      image: NetworkImage('https://puu.sh/Cnjbm.png'),
    );
  }
}
