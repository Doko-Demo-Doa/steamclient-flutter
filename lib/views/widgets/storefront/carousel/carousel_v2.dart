import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

class Carousel extends StatelessWidget {
  final imageLinks = [
    'https://cdn.cloudflare.steamstatic.com/steam/apps/1091500/header.jpg?t=1588941389',
    'https://steamcdn-a.akamaihd.net/steam/apps/1121560/capsule_616x353.jpg?t=1572307828',
    'https://steamcdn-a.akamaihd.net/steam/apps/912450/capsule_616x353.jpg?t=1570669161'
  ];

  final controller = PageController(initialPage: 1, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 270,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12, top: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    width: width * 0.8,
                    height: 170,
                    image: NetworkImage(imageLinks[index > 2 ? 0 : index]),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4),
                  child: Text(
                    "Cyberpunk 2077",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Text(
                  "Pre-purchase Now",
                  style: TextStyle(color: AppColors.SLATE_GREY),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: imageLinks.length,
      ),
    );
  }
}
