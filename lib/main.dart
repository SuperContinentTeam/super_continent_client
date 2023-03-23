import 'package:flutter/material.dart';
import 'package:super_continent_client/root_page.dart';
import 'package:super_continent_client/utils/localization/core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyLocalization.initial(language: "cn");
  runApp(const RootPage());
}
