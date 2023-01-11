import 'package:foodorderapp/screen/cat4/cat4_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../cat1/cat1_controller.dart';

class Cat4ScreenBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Cat4ScreenController());

  }
}