import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/game_page/controller.dart';
import 'package:super_continent_client/pages/game_page/widgets/header_panel.dart';
import 'package:super_continent_client/pages/game_page/widgets/world_panel.dart';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);

  final controller = Get.put(GamePageController());

  final GlobalKey headerPanelKey = GlobalKey();
  final GlobalKey worldPanelKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeaderPanel(key: headerPanelKey, controller: controller),
        LayoutBuilder(builder: (context, constraints) {
          final RenderBox renderBox =
              headerPanelKey.currentContext!.findRenderObject() as RenderBox;
          final double headerHeight = renderBox.size.height;
          final double appBarHeight = AppBar().preferredSize.height;
          final worldHeight = screenHeight - appBarHeight - headerHeight;
          return SizedBox(
            width: worldHeight,
            height: worldHeight,
            child: WorldPanel(key: worldPanelKey, controller: controller),
          );
        }),
      ],
    );
  }
}
