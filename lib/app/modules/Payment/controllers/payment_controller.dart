import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  //TODO: Implement PaymentController
  TextEditingController nameoncardController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  final count = 0.obs;
  @override
  void onDispose() {
    nameoncardController.dispose();
    cardNumberController.dispose();
    expirationController.dispose();
    cvvController.dispose();
  }

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
