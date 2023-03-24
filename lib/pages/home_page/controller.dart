import 'package:get/get.dart';
import 'package:super_continent_client/utils/localization/core.dart';

class HomePageController extends GetxController {
  late final String single;
  late final String online;
  late final String save;
  late final String settings;
  late final String exit;

  @override
  void onInit() {
    final stringButtons = MyLocalization.get("home-page-buttons").split(",");
    single = stringButtons[0];
    online = stringButtons[1];
    save = stringButtons[2];
    settings = stringButtons[3];
    exit = stringButtons[4];
    super.onInit();
  }
}
