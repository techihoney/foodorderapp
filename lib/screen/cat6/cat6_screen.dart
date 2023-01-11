import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../model/order.dart';
import 'cat6_controller.dart';

class Cat6Screen extends StatelessWidget {
  const Cat6Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Cat6ScreenController>(builder: (controller)=> Scaffold(

      body: SafeArea(
          child:
          FutureBuilder<List<Order>>(
              future: controller.loadData(),
              builder: ( context, AsyncSnapshot snapshot){
                if(snapshot.hasData){
                  List<Order> orders = snapshot.data;
                  return ListView.builder(
                      itemCount: controller.orders.length,

                      itemBuilder: (context, index){
                        return  Text('${controller.orders[index].name}'
                        );
                      });

                }else{
                  return Center(child: CircularProgressIndicator(),);
                }
              })

      ),


    ));
  }
}