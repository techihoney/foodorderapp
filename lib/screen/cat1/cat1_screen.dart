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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
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
                                      addOnTap: () {
                                        controller.addOnTap(orders[index].price,index);
                                      },
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ))),
                          onPressed: () {
                            controller.totalPrice;
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(14),
                            child: Text(
                              "Total Amount : ₹ 0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ));
  }
}
