import 'package:get/get.dart';

import '../controllers/payment_completed_controller.dart';

class PaymentCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentCompletedController>(
      () => PaymentCompletedController(),
    );
  }
}
