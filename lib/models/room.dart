import 'package:super_continent_client/utils/localization/core.dart';

Map<int, String> roomStatus = {
  0: MyLocalization.get("room-status-0"),
  1: MyLocalization.get("room-status-1")
};

class Room {
  String name;
  int currentNumber;
  int limitNumber = 20;
  int status;
  String code;

  Room(this.name, this.currentNumber, this.status, this.code);
}
