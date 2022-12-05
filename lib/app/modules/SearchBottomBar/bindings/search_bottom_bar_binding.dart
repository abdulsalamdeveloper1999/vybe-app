import 'package:get/get.dart';

import '../controllers/search_bottom_bar_controller.dart';

class SearchBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchBottomBarController>(
      () => SearchBottomBarController(),
    );
  }
}
