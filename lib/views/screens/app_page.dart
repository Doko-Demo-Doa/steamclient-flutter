// Page for single app, just like /app/ route on website.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Nier Automata',
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                background: Image.network(
                  "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: Container(
          child: Text('Sample text'),
        ),
      ),
    );
  }
}
