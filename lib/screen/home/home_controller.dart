import 'package:foodorderapp/routes/route_management.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{


  @override
  onInit() {
    super.onInit();

  }


  onButtonClick() {
    RouteManagement.goToMenu();

  }
}


