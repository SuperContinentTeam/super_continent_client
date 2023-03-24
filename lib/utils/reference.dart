import 'dart:developer' as developer;
import 'package:flutter/services.dart' show rootBundle;

printf(dynamic data) {
  developer.log(data.toString());
}

readAssetFile(String filepath) async {
  return await rootBundle.loadString("assets/$filepath");
}
