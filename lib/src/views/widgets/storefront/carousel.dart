import 'package:flutter/cupertino.dart';

class Carousel extends StatelessWidget {
  static final imageLink = 'https://steamcdn-a.akamaihd.net/steam/apps/872790/capsule_616x353.jpg?t=1544427064';

  final List<Widget> _pages = <Widget>[
    new ConstrainedBox(
      constraints: BoxConstraints.expand(
        height: 50
      ),
      child: Image(image: NetworkImage(imageLink)),
    ),
       new ConstrainedBox(
      constraints: BoxConstraints.expand(
        height: 50
      ),
      child: Image(image: NetworkImage(imageLink)),
    ),
       new ConstrainedBox(
      constraints: BoxConstraints.expand(
        height: 50
      ),
      child: Image(image: NetworkImage(imageLink)),
    )
  ];

  @override
    Widget build(BuildContext context) {
      return Container(
        child: PageView(
          children: _pages,
        ),
      );
    }
}
