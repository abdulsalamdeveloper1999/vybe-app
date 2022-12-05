import 'package:get/get.dart';

import '../controllers/restaurant_card_controller.dart';

class RestaurantCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantCardController>(
      () => RestaurantCardController(),
    );
  }
}
