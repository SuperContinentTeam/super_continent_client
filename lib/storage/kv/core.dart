import 'package:hive_flutter/adapters.dart';

import 'keys.dart';

class HiveDataBase {
  static late Box common;

  static initial() async {
    await Hive.initFlutter();
    common = await Hive.openBox(HiveKeys.common);
  }
}
