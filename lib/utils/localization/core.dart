import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../logger.dart';

class Localization {
  static late String stringJson;

  static loadJsonFile(String language) async {
    final jsonString =
        await rootBundle.loadString("assets/localization/$language.json");

    return jsonString;
  }

  static initial({String language = "en"}) async {
    try {
      stringJson = await loadJsonFile(language);
    } catch (e) {
      logE(e.toString());
      stringJson = await loadJsonFile("en");
    }
  }
}
