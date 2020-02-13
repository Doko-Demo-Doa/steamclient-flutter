// Page for single app, just like /app/ route on website.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/common/predefined_colors.dart' as PredefinedColors;

class AppPage extends StatelessWidget {
  final String appId;

  AppPage(this.appId);

  Widget getHeadline(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: PredefinedColors.ALMOST_BLACK,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 210,
              floating: true,
              snap: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.pin,
                  title: Text('',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  background: Stack(
                    children: <Widget>[
                      Image.network(
                          'https://steamcdn-a.akamaihd.net/steam/apps/524220/capsule_616x353.jpg?t=1551189877',
                          fit: BoxFit.cover),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            gradient: LinearGradient(
                              begin: FractionalOffset.bottomCenter,
                              end: FractionalOffset.topCenter,
                              colors: [
                                Colors.grey.withOpacity(0.0),
                                Colors.black38,
                              ],
                            )),
                      )
                    ],
                  )),
            )
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              getHeadline('NieR:Automata™ Game of the YoRHa Edition'),
              // Pricing
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            color: PredefinedColors.PEA_GREEN,
                            child: Text('-50%'),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            color: PredefinedColors.DARK_GREY_BLUE,
                            child: Column(
                              children: <Widget>[
                                Text('300.000₫',
                                    style: TextStyle(
                                        color: PredefinedColors.POWDER_BLUE,
                                        fontSize: 8,
                                        decoration:
                                            TextDecoration.lineThrough)),
                                Text('150.000₫',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: PredefinedColors.POWDER_BLUE))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(9)),
                      RaisedButton(
                        onPressed: () {
                          print('Pressed');
                        },
                        color: PredefinedColors.DIRTY_GREEN,
                        child: Text('Add To Cart',
                            style: TextStyle(color: Colors.white)),
                      ),
                      // Platforms.
                      Padding(padding: const EdgeInsets.all(2)),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.windows,
                            color: Colors.white,
                            size: 14,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2)),
                          Icon(FontAwesomeIcons.apple,
                              color: Colors.white, size: 14),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2)),
                          Icon(FontAwesomeIcons.linux,
                              color: Colors.white, size: 14)
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // Metadata
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Recent Reviews',
                          style: TextStyle(color: Colors.white, height: 3)),
                      Text('62% - Mixed',
                          style: TextStyle(color: PredefinedColors.FAWN)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('Developer',
                          style: TextStyle(color: Colors.white, height: 3)),
                      Text('PlatinumGames',
                          style:
                              TextStyle(color: PredefinedColors.POWDER_BLUE)),
                    ],
                  )
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('All Reviews',
                          style: TextStyle(color: Colors.white, height: 3)),
                      Text('78% - Mostly Positive',
                          style: TextStyle(color: PredefinedColors.PEA_GREEN)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('Publisher',
                          style: TextStyle(color: Colors.white, height: 3)),
                      Text('Square Enix',
                          style:
                              TextStyle(color: PredefinedColors.POWDER_BLUE)),
                    ],
                  )
                ],
              ),
              getHeadline('About the game'),
              Text(
                  "NieR: Automata tells the story of androids 2B, 9S and A2 and their battle to reclaim the machine-driven dystopia overrun by powerful machines. Humanity has been driven from the Earth by mechanical beings from another world. In a final effort to take back the planet, the human resistance sends a force of android soldiers to destroy the invaders. Now, a war between machines and androids rages on... A war that could soon unveil a long-forgotten truth of the world.",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
              Image.network(
                  'https://steamcdn-a.akamaihd.net/steam/apps/524220/extras/Nier-GOTY-Steam-EN.jpg?t=1562596376')
            ],
          ),
        ),
      ),
    );
  }
}
