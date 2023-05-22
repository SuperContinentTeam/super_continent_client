import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/game_page/controller.dart';
import 'package:super_continent_client/pages/game_page/widgets/filter_panel.dart';
import 'package:super_continent_client/pages/game_page/widgets/header_panel.dart';
import 'package:super_continent_client/pages/game_page/widgets/world_panel.dart';
import 'package:super_continent_client/pages/game_page/widgets/zoning_panel.dart';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);

  final controller = Get.put(GamePageController());

  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    return SizedBox(
      height: windowSize.height,
      width: windowSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeaderPanel(controller: controller),
          const FilterPanel(),
          Flexible(
            child: Row(
              children: [
                Expanded(child: WorldPanel(controller: controller)),
                Flexible(child: Container())
              ],
            ),
          )
        ],
      ),
    );
  }
}
