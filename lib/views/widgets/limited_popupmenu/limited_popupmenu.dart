import 'package:flutter/material.dart';
import 'package:steamclient/views/widgets/limited_popupmenu/custom_popup.dart';

enum WhyFarther {
  harder,
  smarter,
  selfStarter,
  tradingCharter,
  aaa,
  bbb,
  ccc,
  ddd
}

class LimitedPopupMenu extends StatefulWidget {
  @override
  _LimitedPopupMenuState createState() => _LimitedPopupMenuState();
}

class _LimitedPopupMenuState extends State<LimitedPopupMenu> {
  WhyFarther _selection = WhyFarther.harder;

  @override
  Widget build(BuildContext context) {
    return CustomPopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {
        setState(() {
          _selection = result;
        });
      },
      offset: Offset(0.0, -40.3),
      height: 100,
      elevation: 0,
      child: RaisedButton(
        onPressed: null,
        child: Text('aaa'),
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.aaa,
          child: Text('Placed in charge of trading charter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.bbb,
          child: Text('Placed in charge of trading charter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.ccc,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
    );
  }
}

/////////////////////
