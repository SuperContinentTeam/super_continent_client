import 'package:flutter/material.dart';
import 'package:super_continent_client/components/border_inkwell.dart';

import '../controller.dart';

class WorldPanel extends StatelessWidget {
  const WorldPanel({Key? key, required this.controller}) : super(key: key);
  final GamePageController controller;

  @override
  Widget build(BuildContext context) {
    int size = controller.worldSize.value;

    return GridView.builder(
      itemCount: size * size,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size,
        mainAxisSpacing: 0, // 主轴方向间距
        crossAxisSpacing: 0, // 横轴方向间距
        childAspectRatio: 1, // 子项的宽高比
      ),
      itemBuilder: (context, index) {
        return BorderInkWell(
          onTap: () {},
          child: Text("${index ~/ size},${index % size}"),
        );
      },
    );
  }
}
