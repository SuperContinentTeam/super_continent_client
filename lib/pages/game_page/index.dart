import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/game_page/controller.dart';
import 'package:super_continent_client/pages/game_page/widgets/resource_item.dart';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);

  final controller = Get.put(GamePageController());

  final resourceIcons = ["energy", "mineral","energy", "mineral","energy"];

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: resourceIcons.map((e) {
          RxDouble reserve = controller.resourceMap[e]!["reserve"]!;
          RxDouble monthly = controller.resourceMap[e]!["monthly"]!;
          return Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Obx(
                () => ResourceItem(
                  iconPath: "$e.png",
                  reserve: reserve.value,
                  monthly: monthly.value,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
