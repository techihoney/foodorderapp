import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'app_routes.dart';

mixin RouteManagement {
  static void goToMenu() {
    Get.toNamed(menuScreen);
  }
  static void goToCat1() {
    Get.toNamed(cat1);
  }
  static void goToCat2() {
    Get.toNamed(cat2);
  }
  static void goToCat3() {
    Get.toNamed(cat3);
  }
  static void goToCat4() {
    Get.toNamed(cat4);
  }
  static void goToCat5() {
    Get.toNamed(cat5);
  }
  static void goToCat6() {
    Get.toNamed(cat6);
  }


}