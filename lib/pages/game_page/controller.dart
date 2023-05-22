import 'package:get/get.dart';
import 'package:super_continent_client/utils/common_keys.dart';

class GamePageController extends GetxController {
  RxInt worldSize = RxInt(10);

  final resourceMap = {
    CommonKey.energy: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.mineral: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.food: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.customer: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.alloy: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.physics: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.engineer: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
    CommonKey.beyond: {
      CommonKey.reserve: RxDouble(0),
      CommonKey.monthly: RxDouble(0),
    },
  };
}
