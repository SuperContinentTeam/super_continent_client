import 'package:get/get.dart';
import 'package:super_continent_client/utils/common_keys.dart';

class GamePageController extends GetxController {
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
    }
  };
}
