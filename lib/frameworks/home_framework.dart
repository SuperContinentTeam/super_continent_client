import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/utils/localization/core.dart';

class HomeFrameworkController {
  static Rx<Widget> body = Rx<Widget>(Container());
}

class HomeFramework extends StatelessWidget {
  HomeFramework({Key? key, this.firstWidget}) : super(key: key) {
    if (firstWidget != null) {
      HomeFrameworkController.body.value = firstWidget!;
    }
  }

  final Widget? firstWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(MyLocalization.get("title"))),
      body: Obx(
        () => Center(child: HomeFrameworkController.body.value),
      ),
    );
  }
}
