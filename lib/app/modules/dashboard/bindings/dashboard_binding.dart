import 'package:flutter_getx_test/app/modules/categories/controllers/categories_controller.dart';
import 'package:flutter_getx_test/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<CategoriesController>(
      () => CategoriesController(),
    );
  }
}
