import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/utils/localization/core.dart';

import '../pages/home_page/index.dart';

class HomeFrameworkController {
  static Rx<Widget> body = Rx<Widget>(HomePage());
}

class HomeFramework extends StatelessWidget {
  const HomeFramework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(MyLocalization.get("title"))),
      body: Obx(() => Center(child: HomeFrameworkController.body.value)),
    );
  }
}
