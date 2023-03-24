import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_continent_client/frameworks/home_framework.dart';
import 'package:super_continent_client/pages/home_page/index.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeFramework(),
    );
  }
}
