import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_continent_client/root_page.dart';
import 'package:super_continent_client/storage/kv/core.dart';
import 'package:super_continent_client/storage/kv/keys.dart';
import 'package:super_continent_client/utils/localization/core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDataBase.initial();

  final String lang = HiveDataBase.getOrCreate(HiveKeys.language);
  await MyLocalization.initial(language: lang);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ),);
  runApp(const RootPage());
}
