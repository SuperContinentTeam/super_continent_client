import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_continent_client/root_page.dart';
import 'package:super_continent_client/storage/kv/core.dart';
import 'package:super_continent_client/utils/localization/core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDataBase.initial();
  await MyLocalization.initial(language: "cn");
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ),);
  runApp(const RootPage());
}
