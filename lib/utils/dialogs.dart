import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:super_continent_client/utils/localization/core.dart';
import 'package:get/get.dart';

confirmDialog(BuildContext context, String desc, Function confirm) {
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
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
              child: Text(MyLocalization.get("setting-confirm")),
            )
          ],
        );
      });
}

showColorPicker(BuildContext context, Color currentColor, Function change) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(MyLocalization.get("dialog-color-picker")),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: currentColor,
              onColorChanged: (Color value) {
                change(value);
              },
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
              child: Text(MyLocalization.get("setting-confirm")),
            )
          ],
        );
      });
}
