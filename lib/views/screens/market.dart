import 'package:boardview/board_item.dart';
import 'package:boardview/board_list.dart';
import 'package:boardview/boardview.dart';
import 'package:boardview/boardview_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:steamclient/common/predefined_colors.dart';
import 'package:steamclient/views/widgets/appbar/steam_appbar.dart';
import 'package:steamclient/views/widgets/boardview/board_item_object.dart';
import 'package:steamclient/views/widgets/boardview/board_list_object.dart';

class SteamMarket extends StatelessWidget {
  List<BoardListObject> _listData = [
    BoardListObject(title: "List title 1"),
    BoardListObject(title: "List title 2"),
    BoardListObject(title: "List title 3")
  ];

  //Can be used to animate to different sections of the BoardView
  BoardViewController boardViewController = new BoardViewController();

  @override
  Widget build(BuildContext context) {
    List<BoardList> _lists = List<BoardList>();
    for (int i = 0; i < _listData.length; i++) {
      _lists.add(_createBoardList(_listData[i]));
    }
    return Scaffold(
      appBar: AppBar(),
      body: BoardView(
        lists: _lists,
        boardViewController: boardViewController,
      ),
    );
  }

  Widget buildBoardItem(BoardItemObject itemObject) {
    return BoardItem(
      onStartDragItem: (int listIndex, int itemIndex, BoardItemState state) {},
      onDropItem: (int listIndex, int itemIndex, int oldListIndex,
          int oldItemIndex, BoardItemState state) {
        //Used to update our local item data
        var item = _listData[oldListIndex].items[oldItemIndex];
        _listData[oldListIndex].items.removeAt(oldItemIndex);
        _listData[listIndex].items.insert(itemIndex, item);
      },
      onTapItem: (int listIndex, int itemIndex, BoardItemState state) async {},
      item: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(itemObject.title),
        ),
      ),
    );
  }

  Widget _createBoardList(BoardListObject list) {
    List<BoardItem> items = new List();
    items.add(BoardItem(
      item: Container(
        height: 54,
        color: AppColors.AVOCADO,
      ),
    ));
    items.add(BoardItem(
      item: Container(
        height: 54,
        color: AppColors.AVOCADO,
      ),
    ));
    items.add(BoardItem(
      item: Container(
        height: 54,
        color: AppColors.AVOCADO,
      ),
    ));
    items.add(
      BoardItem(
        item: Container(
          height: 54,
          color: AppColors.AVOCADO,
        ),
      ),
    );
    for (int i = 0; i < list.items.length; i++) {
      items.insert(i, buildBoardItem(list.items[i]));
    }

    return BoardList(
      onStartDragList: (int listIndex) {},
      onTapList: (int listIndex) async {},
      onDropList: (int listIndex, int oldListIndex) {
        //Update our local list data
        var list = _listData[oldListIndex];
        _listData.removeAt(oldListIndex);
        _listData.insert(listIndex, list);
      },
      headerBackgroundColor: Color.fromARGB(255, 235, 236, 240),
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      header: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              list.title,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
      items: items,
    );
  }
}
