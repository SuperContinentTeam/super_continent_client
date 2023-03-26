import 'package:flutter/material.dart';

import '../utils/localization/core.dart';

class BackAndConfirm extends StatelessWidget {
  const BackAndConfirm({
    Key? key,
    required this.backToDo,
    required this.confirmToDo,
  }) : super(key: key);
  final Function backToDo;
  final Function confirmToDo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            backToDo();
          },
          color: Colors.blueGrey,
          child: Text(MyLocalization.get("setting-back")),
        ),
        MaterialButton(
          onPressed: () {
            confirmToDo();
          },
          color: Colors.blueAccent,
          child: Text(MyLocalization.get("setting-confirm")),
        )
      ],
    );
  }
}
