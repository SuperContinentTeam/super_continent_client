import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StartPanelController extends GetxController {
  RxInt worldWidth = 10.obs;
  List<int> worldWidthItems = [10, 20, 30];

  RxInt aiCount = 0.obs;
  RxInt resourceRatio = 0.obs;

  final empireNameController = TextEditingController(text: "");
  final aiCountController = TextEditingController(text: "0");

  changeWorldWidth(int? newValue) {
    worldWidth.value = newValue ?? 10;
  }
}
