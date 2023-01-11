import 'package:foodorderapp/screen/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeScreenController());

  }
}