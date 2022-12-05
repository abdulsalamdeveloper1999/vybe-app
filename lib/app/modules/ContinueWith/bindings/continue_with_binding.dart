import 'package:get/get.dart';

import '../controllers/continue_with_controller.dart';

class ContinueWithBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContinueWithController>(
      () => ContinueWithController(),
    );
  }
}
