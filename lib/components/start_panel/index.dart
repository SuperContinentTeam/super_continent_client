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
  StartPanel({Key? key, required this.isOwner}) : super(key: key);

  final bool isOwner;

  final controller = Get.put(StartPanelController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartPanelController>(
        init: controller,
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-world-width")),
                  ),
                  Expanded(
                    child: DropdownButton<int>(
                      items: controller.worldWidthItems
                          .map((e) => DropdownMenuItem<int>(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: isOwner ? controller.changeWorldWidth : null,
                      value: controller.worldWidth.value,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-ai-count")),
                  ),
                  Expanded(
                    child: Slider(
                      value: controller.aiCount.toDouble(),
                      min: 0,
                      max: 10,
                      divisions: 10,
                      onChanged: controller.changeAiCount,
                      label: controller.aiCount.toString(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(MyLocalization.get("start-panel-ai-desc")),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-resource")),
                  ),
                  Expanded(
                    child: DropdownButton<int>(
                      items: resourceItemMap.entries
                          .map((e) => DropdownMenuItem<int>(
                                value: e.key,
                                child: Text(e.value.description),
                              ))
                          .toList(),
                      onChanged:
                          isOwner ? controller.changeResourceRatio : null,
                      value: controller.resourceRatio.value,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:
                        Text(MyLocalization.get("start-panel-resource-desc")),
                  )
                ],
              ),
              Text(
                MyLocalization.get("start-panel-payer"),
                style: const TextStyle(color: Colors.red),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-country-name")),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.countryNameController,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        Text(MyLocalization.get("start-panel-country-color")),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        controller.changeCountryColor(context);
                      },
                      child: Container(
                        width: 100,
                        height: 15,
                        decoration: BoxDecoration(
                          color: controller.countryColor.value,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 4, child: Container())
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-using-ai")),
                  ),
                  Expanded(
                    child: Checkbox(
                      onChanged: controller.changeUsingAI,
                      value: controller.usingAI.value,
                    ),
                  ),
                  Expanded(flex: 4, child: Container())
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(MyLocalization.get("start-panel-import-ai")),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.aiModuleController,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: controller.importAIModule,
                            child: Text(
                              MyLocalization.get("start-panel-import-ai"),
                            ),
                          ),
                        ),
                        Expanded(child: Container())
                      ],
                    ),
                  ),
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
        });
  }
}
