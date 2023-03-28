import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import '../models/room.dart';

class RoomList extends StatelessWidget {
  const RoomList({Key? key, required this.roomList}) : super(key: key);

  final List<Room> roomList;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        _buildHeader(),
      ],
      columnWidths: const {
        0: FractionColumnWidth(0.1),
        1: FractionColumnWidth(0.5),
        2: FractionColumnWidth(0.2),
        3: FractionColumnWidth(0.1),
        4: FractionColumnWidth(0.1),
      },
    );
  }

  _buildCell(String content) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        child: Text(content),
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

  _buildTable() {}
}
