import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/game_page/widgets/resource_item.dart';

import '../../../utils/common_keys.dart';
import '../controller.dart';

class HeaderPanel extends StatelessWidget {
  HeaderPanel({Key? key, required this.controller}) : super(key: key);

  final GamePageController controller;
  final resourceIcons = [
    CommonKey.energy,
    CommonKey.mineral,
    CommonKey.food,
    CommonKey.customer,
    CommonKey.alloy,
    CommonKey.physics,
    CommonKey.engineer,
    CommonKey.beyond,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: resourceIcons.map((e) {
        RxDouble reserve = controller.resourceMap[e]![CommonKey.reserve]!;
        RxDouble monthly = controller.resourceMap[e]![CommonKey.monthly]!;
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
    );
  }
}
