import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import '../localization/core.dart';

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
