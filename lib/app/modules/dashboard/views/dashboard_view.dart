import 'package:flutter/material.dart';
import 'package:flutter_getx_test/app/modules/categories/views/categories_view.dart';
import 'package:flutter_getx_test/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Obx(
          () => TabBar(
            onTap: (value) => {controller.changeIndex(value)},
            controller: controller.tabController,
            tabs: [
              Tab(
                  icon: controller.selectedIndex == 0
                      ? Icon(Icons.directions_car)
                      : Icon(Icons.add)),
              Tab(
                  icon: controller.selectedIndex == 1
                      ? Icon(Icons.directions_bike)
                      : Icon(Icons.ac_unit)),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          HomeView(),
          CategoriesView(),
        ],
      ),
    );
  }
}
