import 'package:flutter/material.dart';

import '../../../components/border_inkwell.dart';

class FilterPanel extends StatelessWidget {
  const FilterPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BorderInkWell(
            onTap: () {},
            child: const Text(
              "宜居滤镜",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Expanded(
          child: BorderInkWell(
            onTap: () {},
            child: const Text(
              "领土滤镜",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
