// Simple one with no scroll physics
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

const tabLabels = [
  'For You',
  'Trending',
  'Categories',
  'Recommendations',
  'News',
  'Steam Labs'
];

class ScrollableTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tabLabels
            .map(
              (e) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                child: Text(
                  e,
                  style: TextStyle(color: AppColors.LIGHT_GREY_BLUE),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
