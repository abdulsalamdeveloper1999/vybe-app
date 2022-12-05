import 'package:get/get.dart';

import '../controllers/buy_tickets_controller.dart';

class BuyTicketsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyTicketsController>(
      () => BuyTicketsController(),
    );
  }
}
