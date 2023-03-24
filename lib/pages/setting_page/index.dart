import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:super_continent_client/utils/localization/core.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(MyLocalization.get("title"))),
      
    );
  }
}
