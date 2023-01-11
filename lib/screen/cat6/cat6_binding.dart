import 'package:get/get.dart';
import 'cat6_controller.dart';

class Cat6ScreenBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Cat6ScreenController());

  }
}