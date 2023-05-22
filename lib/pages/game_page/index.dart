import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/game_page/controller.dart';
import 'package:super_continent_client/pages/game_page/widgets/header_panel.dart';
import 'package:super_continent_client/pages/game_page/widgets/world_panel.dart';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);

  final controller = Get.put(GamePageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeaderPanel(controller: controller),
        WorldPanel(controller: controller),
      ],
    );
  }
}
