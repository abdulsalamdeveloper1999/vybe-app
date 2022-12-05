import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RestaurantCardController extends GetxController {
  //TODO: Implement RestaurantCardController

  TextEditingController searchController = TextEditingController();

  final count = 0.obs;

  @override
  void onDispose() {
    searchController.dispose();
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
