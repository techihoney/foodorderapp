import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model/order.dart';

class Cat1ScreenController extends GetxController{

  List<Order> orders = [];
  final quantity =0.obs;


  @override
  void onInit() async {
    super.onInit();
    loadData();
  }

  quantityIncrease( int index){
    quantity.value++;
    update();
    print(quantity);

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