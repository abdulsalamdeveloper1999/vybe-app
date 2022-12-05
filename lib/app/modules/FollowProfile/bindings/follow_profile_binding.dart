import 'package:get/get.dart';

import '../controllers/follow_profile_controller.dart';

class FollowProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FollowProfileController>(
      () => FollowProfileController(),
    );
  }
}
