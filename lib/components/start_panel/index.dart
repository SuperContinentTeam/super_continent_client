import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/components/back_and_confirm.dart';
import 'package:super_continent_client/components/start_panel/controller.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import '../../frameworks/home_framework.dart';
import '../../models/start_panel_resource_item.dart';
import '../../pages/home_page/index.dart';

class StartPanel extends StatelessWidget {
  StartPanel({Key? key}) : super(key: key);

  final controller = Get.put(StartPanelController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text("${MyLocalization.get("start-panel-world-width")}: "),
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
            ),
          ],
        ),
        Row(
          children: [
            Text("${MyLocalization.get("start-panel-ai-count")}: "),
            Tooltip(
              message: MyLocalization.get("start-panel-ai-desc"),
              child: SizedBox(
                width: Get.width / 4,
                child: TextField(
                  controller: controller.aiCountController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"\d{0,10}$")),
                  ],
                ),
              ),
            ),
            Text(MyLocalization.get("start-panel-ai-desc"))
          ],
        ),
        BackAndConfirm(
          backToDo: () {
            HomeFrameworkController.body.value = HomePage();
          },
          confirmToDo: () {},
        )
      ],
    );
  }
}
