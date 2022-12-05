import 'package:get/get.dart';

import '../controllers/payment_not_completed_controller.dart';

class PaymentNotCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentNotCompletedController>(
      () => PaymentNotCompletedController(),
    );
  }
}
