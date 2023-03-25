import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/components/start_panel/controller.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import '../../models/start_panel_resource_item.dart';

class StartPanel extends StatelessWidget {
  StartPanel({Key? key}) : super(key: key);

  final controller = Get.put(StartPanelController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(MyLocalization.get("start-panel-world-width")),
            Obx(
              () => DropdownButton<int>(
                items: controller.worldWidthItems
                    .map((e) => DropdownMenuItem<int>(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: controller.changeWorldWidth,
                value: controller.worldWidth.value,
              ),
            )
          ],
        )
      ],
    );
  }
}
