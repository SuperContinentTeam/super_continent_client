import 'package:flutter/material.dart';

import '../controller.dart';

class WorldPanel extends StatelessWidget {
  const WorldPanel({Key? key, required this.controller}) : super(key: key);
  final GamePageController controller;

  @override
  Widget build(BuildContext context) {
    // final double appBarHeight = AppBar().preferredSize.height;
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double availableHeight = screenHeight - appBarHeight;
    int size = controller.worldSize.value;

    return GridView.builder(
      itemCount: 100,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size, // 10列
        mainAxisSpacing: 0, // 主轴方向间距
        crossAxisSpacing: 0, // 横轴方向间距
        childAspectRatio: 1, // 子项的宽高比
      ),
      itemBuilder: (context, index) {

        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: InkWell(
            onTap: () {},
            child: Text("${index ~/ size},${index % size}"),
          ),
        );
      },
    );
  }
}
