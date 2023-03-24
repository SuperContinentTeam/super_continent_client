import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          onPressed: () {},
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
