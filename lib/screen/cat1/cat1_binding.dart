import 'package:foodorderapp/screen/cat1/cat1_controller.dart';
import 'package:get/get.dart';
class Cat1ScreenBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Cat1ScreenController());

  }
}