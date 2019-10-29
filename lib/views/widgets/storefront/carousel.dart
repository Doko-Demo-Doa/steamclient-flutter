import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  static final imageLink =
      'https://steamcdn-a.akamaihd.net/steam/apps/872790/capsule_616x353.jpg?t=1544427064';

  final List<Widget> _pages = <Widget>[
    new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Image(image: NetworkImage('https://steamcdn-a.akamaihd.net/steam/apps/1121560/capsule_616x353.jpg?t=1572307828'), fit: BoxFit.cover),
    ),
    new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Image(image: NetworkImage('https://steamcdn-a.akamaihd.net/steam/apps/912450/capsule_616x353.jpg?t=1570669161'), fit: BoxFit.cover),
    ),
    new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Image(image: NetworkImage(imageLink), fit: BoxFit.cover),
    )
  ];

  final controller = PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: PageView(
        controller: controller,
        children: _pages,
      ),
    );
  }
}
