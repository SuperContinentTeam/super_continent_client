import 'package:get/get.dart';

class GamePageController extends GetxController {
  final resourceMap = {
    "energy": {"reserve": RxDouble(0), "monthly": RxDouble(0)},
    "mineral": {"reserve": RxDouble(0), "monthly": RxDouble(0)},
  };
}
