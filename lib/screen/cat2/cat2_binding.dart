import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'cat2_controller.dart';

class Cat2ScreenBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Cat2ScreenController());

  }
}