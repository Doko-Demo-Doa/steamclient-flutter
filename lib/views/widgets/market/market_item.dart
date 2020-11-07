import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';

const itemHeight = 84.0;
const itemRadius = 8.0;

class MarketItem extends StatelessWidget {
  final String title;
  final String game;
  final double price;
  final String assetName;

  MarketItem({this.title, this.game, this.price, this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: AppColors.CHARCOAL_GREY,
        borderRadius: BorderRadius.all(Radius.circular(itemRadius)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Container(
              child: Image.asset('assets/images/${this.assetName}'),
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    this.game,
                    style: TextStyle(
                      color: AppColors.SECONDARY_TEXT,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '\$ ${this.price.toString()}',
              style: TextStyle(
                color: AppColors.BLUE,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
