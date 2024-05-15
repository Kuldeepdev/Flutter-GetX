import 'package:flutter/material.dart';
import 'package:flutter_getx_test/app/modules/categories/views/categories_view.dart';
import 'package:flutter_getx_test/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_getx_test/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.abc_outlined),
          onPressed: () {
            // print("hi")
            // Get.toNamed(Routes.DASHBOARD, arguments: {"index": "1"});
            DashboardController d = Get.find();
            d.tabController.index = 1;
            d.selectedIndex.value = 1;
          },
        ),
      ),
    );
  }
}
