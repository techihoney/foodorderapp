import 'package:foodorderapp/model/menulist.dart';
import 'package:foodorderapp/routes/route_management.dart';
import 'package:get/get.dart';

class MenuScreenController extends GetxController {
  final List<MenuList> lists = [
    MenuList(
      imageUrl:
      "https://images.unsplash.com/photo-1551024601-bec78aea704b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      title: "Desert", onTap: () {
        RouteManagement.goToCat1();
    }, ),
    MenuList(
        imageUrl:
        "https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4=",
        title: "Burger", onTap: () {
          RouteManagement.goToCat2();
    }),
    MenuList(
        imageUrl:
        "https://healthynibblesandbits.com/wp-content/uploads/2019/12/Spicy-Noodles-with-Pan-Fried-Tofu-FF.jpg",
        title: "Spicy Noodles", onTap: () {
          RouteManagement.goToCat3();
    }),
    MenuList(
        imageUrl:
        "https://thumbs.dreamstime.com/b/gourmet-tasty-italian-penne-pasta-plate-close-up-spicy-tomato-herbs-white-served-top-wooden-table-58667798.jpg",
        title: "Pasta", onTap: () {
          RouteManagement.goToCat4();
    }),
    MenuList(
        imageUrl:
        "https://i.pinimg.com/originals/f3/5a/d9/f35ad9e8bfe75f4b9fc1d9452952a04b.jpg",
        title: "Thali Food", onTap: () {
          RouteManagement.goToCat5();
    }),
    MenuList(
        imageUrl:
        "https://s7g10.scene7.com/is/image/tetrapak/orange-juice-oranges?wid=384&hei=216&fmt=jpg&resMode=sharp2&qlt=85,0&op_usm=1.75,0.3,2,0",
        title: "Juices", onTap: () {
          RouteManagement.goToCat6();
    }),
  ];
}
