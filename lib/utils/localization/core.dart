import 'dart:convert';
import 'package:super_continent_client/utils/reference.dart';

class MyLocalization {
  static late String _stringJson;
  static late Map _wordMap;

  static loadJsonFile(String language) async {
    return await readAssetFile("localization/$language.json");
  }

  static initial({String language = "en"}) async {
    try {
      _stringJson = await loadJsonFile(language);
    } catch (e) {
      printf(e);
      _stringJson = await loadJsonFile("en");
    }
    _wordMap = jsonDecode(_stringJson);
  }

  static String get(String key, {Map<String, String>? fmt}) {
    String template = _wordMap[key]!;
    if (fmt == null) {
      return template;
    }
    for (String f in fmt.keys) {
      template = template.replaceAll("{{$f}}", fmt[f]!);
    }
    return template;
  }
}
