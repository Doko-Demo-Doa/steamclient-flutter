import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/chat/input_area.dart';

enum ItemEnums { startVoiceChat, viewProfile }

class Chat extends StatelessWidget {
  List messages = [
    'Chat 1 🤣',
    'Chat 2 🤣',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    'Chat 4',
    'Chat 5',
    'Chat 6',
    'Chat 7',
    'Chat 8',
    'Chat 9',
    'Chat 10',
    'Chat 11 🥵',
    'Chat 12 🥵🥵',
    'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'Chat 14',
    'Chat 15',
  ];

  final ava =
      'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/df/dfce4a6e90f0379a0f623b5003c1da6dd1bb07f0_full.jpg';

  GlobalKey btnKey = GlobalKey();

  Widget leftText(String content, double maxWidth) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        PopupMenuButton<ItemEnums>(
          color: AppColors.DARK_BLUE_GREY,
          offset: Offset(6, 6),
          child: ClipOval(
            child: Image.network(
              ava,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
          onSelected: (ItemEnums result) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry<ItemEnums>>[
            const PopupMenuItem<ItemEnums>(
              value: ItemEnums.startVoiceChat,
              child: Text('Start voice chat',
                  style: TextStyle(color: Colors.white)),
            ),
            const PopupMenuItem<ItemEnums>(
              value: ItemEnums.viewProfile,
              child:
                  Text('View Profile', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        Padding(padding: const EdgeInsets.only(right: 12)),
        ConstrainedBox(
          child: DecoratedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  content,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: AppColors.POWDER_BLUE),
                ),
              ),
              decoration: BoxDecoration(
                  color: AppColors.DARK_BLUE_GREY,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                  border:
                      Border.all(color: AppColors.DARK_BLUE_GREY, width: 2))),
          constraints: BoxConstraints(
            minHeight: 5.0,
            minWidth: 5.0,
            maxWidth: maxWidth,
          ),
        )
      ],
    );
  }

  Widget rightText(String content, double maxWidth) {
    return GestureDetector(
      onLongPress: () {
        print('Ended');
      },
      child: ConstrainedBox(
        child: DecoratedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                content,
                textAlign: TextAlign.start,
                style: TextStyle(color: AppColors.POWDER_BLUE),
              ),
            ),
            decoration: BoxDecoration(
                color: AppColors.GUNMETAL,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
                border: Border.all(color: AppColors.GUNMETAL, width: 2))),
        constraints: BoxConstraints(
          minHeight: 5.0,
          minWidth: 5.0,
          maxWidth: maxWidth,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.ALMOST_BLACK,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.ALMOST_BLACK,
          actions: <Widget>[
            IconButton(
              tooltip: 'View Profile',
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Add into Group Chat',
              icon: Icon(Icons.person_add),
              onPressed: () {},
            )
          ],
          title: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Image.network(
                ava,
                width: 38,
                height: 38,
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 4)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Scientific Witchery',
                      style: TextStyle(
                          color: AppColors.ELECTRIC_LIME,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  Text('Dota 2: Ranked',
                      style: TextStyle(
                          color: AppColors.VERY_PALE_GREEN, fontSize: 13))
                ],
              )
            ],
          ),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Flexible(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onPanDown: (_) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    itemBuilder: (BuildContext context, int index) {
                      var item = this.messages[index];
                      var maxWidth = MediaQuery.of(context).size.width * 0.7;
                      var isSelf = index % 2 == 0 && index < 6;
                      return Align(
                          alignment: !isSelf
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4)),
                              isSelf
                                  ? rightText(item, maxWidth)
                                  : leftText(item, maxWidth),
                            ],
                          ));
                    }),
              ),
            ),
            InputArea()
          ],
        ));
  }
}
