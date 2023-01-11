import 'package:flutter/material.dart';
import 'package:foodorderapp/screen/menu/menu_controller.dart';
import 'package:get/get.dart';

import '../../widget/menucard_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuScreenController>(builder: (controller)=> Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 20 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Menu",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Icon(
                    Icons.emoji_food_beverage,
                    color: Colors.red,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(height: 10,color: Colors.red,),
            Expanded(
              child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  childAspectRatio:
                  MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.7),
                  children: List.generate(6, (index) {
                    return  MenuWidget(
                      imageUrl: controller.lists[index].imageUrl,
                      text: controller.lists[index].title, onTap:
                        controller.lists[index].onTap,
                    );
                  })),
            )

          ],
        ),
      ),

    ));
  }
}
