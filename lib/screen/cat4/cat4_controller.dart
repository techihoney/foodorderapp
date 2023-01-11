import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../model/order.dart';

class Cat4ScreenController extends GetxController {

  List<Order> orders = [];

  @override
  void onInit() async {
    super.onInit();
    loadData();
  }


  Future<List<Order>> loadData() async {
    var jsonData = await rootBundle.loadString("assets/files/menu.json");
    var decodeData = jsonDecode(jsonData);
    var orderData = decodeData['cat4'];
    for (var data in orderData) {
      Order orderDetails = Order.fromJSON(data);
      orders.add(orderDetails);
    }
    return orders;
  }
}