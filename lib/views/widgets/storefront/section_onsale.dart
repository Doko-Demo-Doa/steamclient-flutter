import 'package:flutter/material.dart';
import 'package:steamclient/models/product.dart';

class SectionOnsale extends StatelessWidget {
  final data = [new Map<String, String>()];

  List<Product> generateData() {
    var sp1 = new Product();
    sp1.price = 47000;
    sp1.appName = 'Ori and the Blind Forest: Definitive Edition';
    sp1.spotlightImage =
        'https://steamcdn-a.akamaihd.net/steam/spotlights/16010db30c4c00876a2d0cd9/spotlight_image_english.jpg?t=1581108695';

    var sp2 = new Product();
    sp2.price = 154000;
    sp2.appName = 'Dead Cells';
    sp2.spotlightImage =
        'https://steamcdn-a.akamaihd.net/steam/spotlights/0fb155d871cd08b3d86ba8e5/spotlight_image_english.jpg?t=1581441009';

    var resp = new List<Product>();
    resp.add(sp1);
    resp.add(sp2);
    resp.add(sp1);
    resp.add(sp2);
    resp.add(sp1);
    resp.add(sp2);

    return resp;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> spotlistLight = generateData().map((e) {
      return Container(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(e.spotlightImage, width: 200, height: 240, fit: BoxFit.cover,)
              ],
            )
          ],
        ),
      );
    }).toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.all(12)),
          Text('Special Offers',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
          Padding(padding: const EdgeInsets.all(6)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: spotlistLight,
            ),
          ),
          Padding(padding: const EdgeInsets.all(6)),
          Text('Hehe')
        ],
      ),
    );
  }
}
