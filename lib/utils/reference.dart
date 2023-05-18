import 'dart:developer' as developer;
import 'package:flutter/services.dart' show rootBundle;

printf(dynamic data) {
  developer.log(data.toString());
}

readAssetFile(String filepath) async {
  return await rootBundle.loadString("assets/$filepath");
}

String formatNumber(double number) {
  double absNumber = number.abs();
  String pre = number < 0 ? "-" : "";
  if (absNumber < 1000) {
    return "$pre${absNumber.toStringAsFixed(2)}";
  } else if (1000 <= absNumber && absNumber < 1000000) {
    return "$pre${(absNumber / 1000).toStringAsFixed(2)}K";
  } else if (1000000 <= absNumber && absNumber < 1000000000) {
    return "$pre${(absNumber / 1000000).toStringAsFixed(2)} M";
  } else if (1000000000 <= absNumber && absNumber < 1000000000000) {
    return "$pre${(absNumber / 1000000000).toStringAsFixed(2)} G";
  } else {
    return "$pre [MAX]";
  }
}
