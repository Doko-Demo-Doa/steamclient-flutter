import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class BrowseBy extends StatelessWidget {
  final btns = ['New Releases', 'Free Games', 'VR Games'];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Browse Steam',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
          Padding(padding: const EdgeInsets.all(5)),
          Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: btns.map((e) {
              return Flexible(
                  fit: FlexFit.tight,
                  child: InkWell(
                    focusColor: PredefinedColors.DARK_BLUE_GREY,
                    splashColor: PredefinedColors.RED_PURPLE,
                    highlightColor: PredefinedColors.FAWN,
                    onTap: () {
                      print('xxx');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          // color: PredefinedColors.LIGHT_NAVY_BLUE,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1.4,
                              color: PredefinedColors.METALLIC_BLUE)),
                      child: Text(
                        e,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: PredefinedColors.POWDER_BLUE, fontSize: 12),
                      ),
                    ),
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
