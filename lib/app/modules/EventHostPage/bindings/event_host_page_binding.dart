import 'package:get/get.dart';

import '../controllers/event_host_page_controller.dart';

class EventHostPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventHostPageController>(
      () => EventHostPageController(),
    );
  }
}
