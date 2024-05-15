import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: deprecated_member_use
class DashboardController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  var selectedIndex = 1.obs;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 2);
    super.onInit();

    tabController.index = 1;
  }

  changeIndex(value) {
    selectedIndex.value = value;
  }
}
