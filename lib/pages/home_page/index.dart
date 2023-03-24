import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.lightBlue,
          child: Text(controller.single),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.lightBlue,
          child: Text(controller.online),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.lightBlue,
          child: Text(controller.save),
        ),
        MaterialButton(
          onPressed: () {
            HomeFrameworkController.body.value = SettingPage();
          },
          color: Colors.lightBlue,
          child: Text(controller.settings),
        ),
        MaterialButton(
          onPressed: () {
            exit(0);
          },
          color: Colors.redAccent,
          child: Text(controller.exit),
        )
      ],
    );
  }
}
