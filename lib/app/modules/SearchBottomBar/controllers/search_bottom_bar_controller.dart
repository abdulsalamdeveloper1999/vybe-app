import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchBottomBarController extends GetxController {
  //TODO: Implement SearchBottomBarController

  TextEditingController searchController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    searchController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
