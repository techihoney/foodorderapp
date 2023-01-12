import 'package:flutter/material.dart';
import 'package:foodorderapp/screen/cat1/cat1_controller.dart';
import 'package:get/get.dart';

import '../../model/order.dart';
import '../../widget/food_order_card.dart';

class Cat1Screen extends StatelessWidget {
  const Cat1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Cat1ScreenController>(
        builder: (controller) => Scaffold(
              body: SafeArea(
                child: FutureBuilder<List<Order>>(
                    future: controller.loadData(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        List<Order> orders = snapshot.data;
                        return ListView.builder(
                            itemCount: controller.orders.length,
                            itemBuilder: (context, index) {
                              return FoodOrderCard(
                                itemName: controller.orders[index].name,
                                itemPrice: controller.orders[index].price,
                                removeOnTap: () {},
                                plusOnTap: () {
                                  controller.quantityIncrease(index);
                                },
                                addOnTap: () {},
                                itemCount: controller.quantity[index],
                              );
                            });
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
            ));
  }
}
