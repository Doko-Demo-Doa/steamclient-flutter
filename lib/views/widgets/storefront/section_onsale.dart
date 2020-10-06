import 'package:flutter/material.dart';
import 'package:steamclient/models/product.dart';
import 'package:steamclient/common/predefined_colors.dart';

class SectionOnsale extends StatelessWidget {
  final String headline;

  SectionOnsale(this.headline);

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
        'https://cdn.cloudflare.steamstatic.com/steam/apps/870780/library_600x900.jpg?t=1596706126';

    var resp = new List<Product>();
    resp.add(sp1);
    resp.add(sp2);
    resp.add(sp1);
    resp.add(sp2);
    resp.add(sp1);
    resp.add(sp2);
    resp.add(sp2);

    return resp;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> spotlistLight = generateData().map((e) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        width: 178,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'AppPage');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  e.spotlightImage,
                  width: 160,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 4),
                child: Text(
                  "Hyperdimension Neptunia Re;Birth1",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: '\$59.99',
                  style: TextStyle(
                      color: AppColors.SLATE_GREY,
                      decoration: TextDecoration.lineThrough),
                  children: [
                    TextSpan(
                      text: '  ',
                      style: TextStyle(
                        color: AppColors.SLATE_GREY,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: '\$39.99',
                      style: TextStyle(
                        color: AppColors.AVOCADO,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: spotlistLight,
            ),
          ),
          Padding(padding: const EdgeInsets.all(7))
        ],
      ),
    );
  }
}
