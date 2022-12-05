import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileBottomBarController extends GetxController {
  //TODO: Implement ProfileBottomBarController
  TextEditingController dropController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  TextEditingController dobController = TextEditingController();
  TextEditingController dobControllertwo = TextEditingController();

  void dobChanged(DateTime? date) {
    if (date != null) {
      dobController.text = date.toString().split(' ')[0];
    }
    update();
  }

  void dobChangedtwo(DateTime? date) {
    if (date != null) {
      dobControllertwo.text = date.toString().split(' ')[0];
    }
    update();
  }

  final count = 0.obs;
  @override
  void onDispose() {
    dobControllertwo.dispose();
    dobController.dispose();
    dropController.dispose();
    locationController.dispose();
    priceController.dispose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
