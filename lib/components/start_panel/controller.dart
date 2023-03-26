import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/utils/dialogs.dart';

class StartPanelController extends GetxController {
  RxInt worldWidth = 10.obs;
  List<int> worldWidthItems = [10, 20, 30];

  RxInt aiCount = 0.obs;
  RxInt resourceRatio = 0.obs;

  Rx<Color> countryColor = Rx<Color>(Colors.black);

  RxBool usingAI = false.obs;

  final countryNameController = TextEditingController(text: "");
  final aiCountController = TextEditingController(text: "0");
  final aiModuleController = TextEditingController(text: "");

  changeWorldWidth(int? newValue) {
    worldWidth.value = newValue ?? 10;
    update();
  }

  changeResourceRatio(int? newValue) {
    resourceRatio.value = newValue ?? 0;
    update();
  }

  changeCountryColor(BuildContext context) {
    showColorPicker(context, countryColor.value, (Color value) {
      countryColor.value = value;
      update();
    });
  }

  changeUsingAI(value) {
    usingAI.value = value;
    update();
  }

  importAIModule() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if(result!= null){
      aiModuleController.text = result.files.single.path!;
      update();
    }
  }
}
