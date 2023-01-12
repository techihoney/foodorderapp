import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model/order.dart';

class Cat1ScreenController extends GetxController{

  List<Order> orders = [];

  final quantity = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0].obs;
 //  final quantity = 0.obs;
 // var quantity = List.filled(10, 0, growable: true);


  @override
  void onInit() async {
    super.onInit();
    loadData();
  }

  quantityIncrease( int index){
   // quantity.value++;
    quantity[index]= quantity[index]+1;
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