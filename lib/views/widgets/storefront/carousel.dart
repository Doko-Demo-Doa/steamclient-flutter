import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final imageLinks = [
    'https://steamcdn-a.akamaihd.net/steam/apps/872790/capsule_616x353.jpg?t=1544427064',
    'https://steamcdn-a.akamaihd.net/steam/apps/1121560/capsule_616x353.jpg?t=1572307828',
    'https://steamcdn-a.akamaihd.net/steam/apps/912450/capsule_616x353.jpg?t=1570669161'
  ];

  final controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Stack(
              children: <Widget>[
                Image(
                    width: MediaQuery.of(context).size.width,
                    image: NetworkImage(imageLinks[index > 2 ? 0 : index]),
                    fit: BoxFit.contain),
                Positioned(
                    bottom: 20,
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.grey.withOpacity(0.0),
                                Colors.black87,
                              ],
                            ))))
              ],
            ),
          );
        },
      ),
    );
  }
}
