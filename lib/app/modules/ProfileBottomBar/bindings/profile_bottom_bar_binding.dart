import 'package:get/get.dart';

import '../controllers/profile_bottom_bar_controller.dart';

class ProfileBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileBottomBarController>(
      () => ProfileBottomBarController(),
    );
  }
}
