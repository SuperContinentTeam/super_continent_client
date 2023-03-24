import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/localization/core.dart';
import 'package:get/get.dart';

confirmDialog(BuildContext context,String desc, Function confirm) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(MyLocalization.get("dialog-confirm-title")),
        content: Text(desc),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(MyLocalization.get("setting-back")),
          ),
          ElevatedButton(
            onPressed: () {
              confirm();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            child: Text(MyLocalization.get("setting-confirm")),
          )
        ],
      );
    },
  );
}
