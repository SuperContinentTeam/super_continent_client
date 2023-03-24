import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/localization/core.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(MyLocalization.get("title"))),
      body: Center(
        child: Column(
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
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text(controller.settings),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text(controller.exit),
            )
          ],
        ),
      ),
    );
  }
}
