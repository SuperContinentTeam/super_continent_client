import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/reference.dart';

class ResourceItem extends StatelessWidget {
  const ResourceItem({
    Key? key,
    required this.iconPath,
    required this.reserve,
    required this.monthly,
  }) : super(key: key);

  final String iconPath;
  final double reserve;
  final double monthly;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: Image.asset("assets/images/$iconPath"),
        ),
        Column(
          children: [
            Text(
              formatNumber(reserve),
              style: TextStyle(color: reserve >= 0 ? Colors.black : Colors.red),
            ),
            Text(
              formatNumber(monthly),
              style: TextStyle(color: monthly >= 0 ? Colors.black : Colors.red),
            )
          ],
        )
      ],
    );
  }
}
