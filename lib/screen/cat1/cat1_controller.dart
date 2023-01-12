import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model/order.dart';

class Cat1ScreenController extends GetxController {
  late final totalPrice;
  List<Order> orders = [];

  //final quantity =0.obs;
  final quantity = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ].obs;

  @override
  void onInit() async {
    super.onInit();
    loadData();
  }

  quantityIncrease(int index) {
    quantity[index] = quantity[index] + 1;
    //quantity.value++;
    update();
  }

  addOnTap(price, index) {
    totalPrice = quantity[index] * price;
    print(totalPrice);
  }

  Future<List<Order>> loadData() async {
    var jsonData = await rootBundle.loadString("assets/files/menu.json");
    var decodeData = jsonDecode(jsonData);
    var orderData = decodeData['cat1'];
    for (var data in orderData) {
      Order orderDetails = Order.fromJSON(data);
      orders.add(orderDetails);
    }
    return orders;
  }
}
