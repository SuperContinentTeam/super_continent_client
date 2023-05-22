import 'package:flutter/material.dart';
import 'package:super_continent_client/components/border_inkwell.dart';

import '../controller.dart';

class ZoningPanel extends StatelessWidget {
  const ZoningPanel({
    Key? key,
    required this.controller,
    this.zoningSize = 1,
  }) : super(key: key);

  final GamePageController controller;
  final int? zoningSize;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: zoningSize! * zoningSize!,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: zoningSize!,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return BorderInkWell(
          onTap: () {},
          child: Text("${index ~/ zoningSize!},${index % zoningSize!}"),
        );
      },
    );
  }
}
