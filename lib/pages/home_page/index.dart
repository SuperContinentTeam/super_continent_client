import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/components/start_panel/index.dart';
import 'package:super_continent_client/frameworks/home_framework.dart';
import 'package:super_continent_client/pages/setting_page/index.dart';
import 'dart:io';

import 'controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 9, child: Container()),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    HomeFrameworkController.body.value =
                        StartPanel(isOwner: true);
                  },
                  child: Text(controller.single),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(controller.online),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(controller.save),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    HomeFrameworkController.body.value = SettingPage();
                  },
                  child: Text(controller.settings),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent
                  ),
                  child: Text(controller.exit),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
