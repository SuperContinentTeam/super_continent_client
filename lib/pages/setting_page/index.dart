import 'package:flutter/material.dart';
import 'package:super_continent_client/components/back_and_confirm.dart';
import 'package:super_continent_client/frameworks/home_framework.dart';
import 'package:super_continent_client/pages/home_page/index.dart';
import 'package:super_continent_client/pages/setting_page/controller.dart';
import 'package:super_continent_client/utils/localization/core.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final controller = Get.put(SettingPageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Expanded(child: Text(MyLocalization.get("setting-language"))),
            Expanded(
              child: Obx(
                () => DropdownButton<String>(
                  items: controller.languageMap.entries.map((e) {
                    return DropdownMenuItem<String>(
                      value: e.key,
                      child: Text(e.value),
                    );
                  }).toList(),
                  onChanged: controller.changeSelectedLanguage,
                  value: controller.selectedLanguage.value,
                ),
              ),
            ),
            Expanded(child: Container())
          ],
        ),
        BackAndConfirm(
          backToDo: () {
            HomeFrameworkController.body.value = HomePage();
          },
          confirmToDo: () {
            controller.confirm(context);
          },
        )
      ],
    );
  }
}
