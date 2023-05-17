import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/utils/localization/core.dart';
import 'package:super_continent_client/utils/reference.dart';

import '../../storage/kv/core.dart';
import '../../storage/kv/keys.dart';
import '../../utils/dialogs/confirm_dialog.dart';

class SettingPageController extends GetxController {
  RxMap<String, String> languageMap = RxMap<String, String>({});
  RxString selectedLanguage = RxString(
    HiveDataBase.getOrCreate(HiveKeys.language),
  );

  final serverHostController = TextEditingController();
  final serverPortController = TextEditingController();

  @override
  onInit() {
    initial();
    super.onInit();
  }

  initial() async {
    final stringJson = await readAssetFile("localization/lang.json");
    languageMap.clear();
    final Map value = jsonDecode(stringJson);
    value[selectedLanguage.value].forEach((key, value) {
      languageMap[key.toString()] = value.toString();
    });
  }

  changeSelectedLanguage(String? newValue) {
    selectedLanguage.value = newValue ?? "en";
  }

  confirm(BuildContext context) {
    final desc = MyLocalization.get("setting-confirm-desc");
    confirmDialog(context, desc, () async {
      await HiveDataBase.common.put(HiveKeys.language, selectedLanguage.value);
      exit(0);
    });
  }
}
