import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import '../models/room.dart';

class RoomList extends StatelessWidget {
  const RoomList({Key? key, required this.roomList}) : super(key: key);

  final List<Room> roomList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Table(
        border: TableBorder.all(),
        children: [_buildHeader(), ..._buildBody()],
        columnWidths: const {
          0: FractionColumnWidth(0.05),
          1: FractionColumnWidth(0.55),
          2: FractionColumnWidth(0.1),
          3: FractionColumnWidth(0.1),
          4: FractionColumnWidth(0.1),
        },
      ),
    );
  }

  _buildCell(String content, {Color? color = Colors.black}) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        child: Text(content, style: TextStyle(color: color)),
      ),
    );
  }

  _buildHeader() {
    return TableRow(
      decoration: const BoxDecoration(color: Colors.grey),
      children: [
        _buildCell("#"),
        _buildCell(MyLocalization.get("online-room-name")),
        _buildCell(MyLocalization.get("online-room-status")),
        _buildCell(MyLocalization.get("online-room-people")),
        _buildCell(MyLocalization.get("online-room-action"))
      ],
    );
  }

  _buildBody() {
    return roomList
        .asMap()
        .entries
        .map((e) => TableRow(children: [
              _buildCell((1 + e.key).toString()),
              _buildCell(e.value.name),
              _buildCell(
                roomStatus[e.value.status].toString(),
                color: e.value.status == 0 ? Colors.green : Colors.red,
              ),
              _buildCell("${e.value.currentNumber}/${e.value.limitNumber}"),
              TableCell(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      MyLocalization.get(
                        "room-action-${e.value.status == 0 ? 'join' : 'watch'}",
                      ),
                      style: TextStyle(
                        color: e.value.status == 0 ? Colors.green : Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ]))
        .toList();
  }
}
