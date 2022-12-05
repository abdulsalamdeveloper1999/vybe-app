import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onDispose() {
    fnameController.dispose();
    lnameController.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
