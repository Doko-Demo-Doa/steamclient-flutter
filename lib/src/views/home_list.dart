import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steamclient/src/views/home_stories.dart';
import 'package:steamclient/src/api/api_product.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 300,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new HomeStories(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 10.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"))),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text("imthpk",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () => ApiProduct.getLatestProduct(),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                      "https://loremflickr.com/g/320/240/paris",
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(FontAwesomeIcons.heart),
                          new SizedBox(width: 16.0),
                          new Icon(FontAwesomeIcons.comment),
                          new SizedBox(width: 16.0),
                          new Icon(FontAwesomeIcons.paperPlane)
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by someone",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"))),
                      ),
                      new SizedBox(width: 10.0),
                      Expanded(
                          child: new TextField(
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment..."),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("1 day ago"),
                )
              ],
            ),
    );
  }
}
