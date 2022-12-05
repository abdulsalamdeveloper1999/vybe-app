import 'package:get/get.dart';

import '../controllers/lounge_page_controller.dart';

class LoungePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoungePageController>(
      () => LoungePageController(),
    );
  }
}
