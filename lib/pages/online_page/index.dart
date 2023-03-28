import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/components/room_list.dart';
import 'package:super_continent_client/frameworks/home_framework.dart';
import 'package:super_continent_client/pages/home_page/index.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import 'controller.dart';

class OnlinePage extends StatelessWidget {
  OnlinePage({Key? key}) : super(key: key);

  final controller = Get.put(OnlinePageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(controller.name), Text("Rank分: ${controller.rank}")],
        ),
        Flexible(child: RoomList(roomList: demoRoomList)),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(MyLocalization.get("online-join-room")),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(MyLocalization.get("online-create-room")),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  HomeFrameworkController.body.value = HomePage();
                },
                child: Text(MyLocalization.get("online-exit")),
              ),
            )
          ],
        )
      ],
    );
  }
}
