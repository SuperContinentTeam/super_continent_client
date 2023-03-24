import 'dart:convert';

import 'package:get/get.dart';
import 'package:super_continent_client/utils/reference.dart';

import '../../storage/kv/core.dart';
import '../../storage/kv/keys.dart';

class SettingPageController extends GetxController {
  RxMap<String, String> languageMap = RxMap<String, String>({});
  RxString selectedLanguage = RxString(
    HiveDataBase.getOrCreate(HiveKeys.language),
  );

  @override
  onInit() {
    initial();
    super.onInit();
  }

  initial() async {
    final stringJson = await readAssetFile("localization/lang.json");
    languageMap.clear();
    final Map value = jsonDecode(stringJson);
    value.forEach((key, value) {
      languageMap[key.toString()] = value.toString();
    });
  }

  changeSelectedLanguage(String? newValue) {
    selectedLanguage.value = newValue!;
  }
}
