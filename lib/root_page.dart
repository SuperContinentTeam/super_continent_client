import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/pages/home_page.dart';
import 'package:super_continent_client/utils/localization/core.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String t = MyLocalization.get("title", fmt: {"buf": " 2023-12-03"});
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: t,
      ),
    );
  }
}
