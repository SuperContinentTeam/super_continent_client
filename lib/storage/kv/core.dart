import 'package:hive_flutter/adapters.dart';

import 'keys.dart';

class HiveDataBase {
  static late Box common;

  static initial() async {
    await Hive.initFlutter();
    common = await Hive.openBox(HiveKeys.common);

    if (!common.containsKey(HiveKeys.language)) {
      await common.put(HiveKeys.language, "cn");
    }
  }

  static getOrCreate(String key, {String? defaultValue}) {
    final String? value = common.get(key, defaultValue: defaultValue);
    if (value == null) {
      common.put(key, defaultValue!);
      return defaultValue;
    }

    return value;
  }
}
