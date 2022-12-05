import 'package:get/get.dart';

import '../controllers/tickets_bottom_bar_controller.dart';

class TicketsBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketsBottomBarController>(
      () => TicketsBottomBarController(),
    );
  }
}
