import 'package:foodorderapp/screen/cat1/cat1_binding.dart';
import 'package:foodorderapp/screen/cat1/cat1_screen.dart';
import 'package:foodorderapp/screen/cat2/cat2_binding.dart';
import 'package:foodorderapp/screen/cat2/cat2_screen.dart';
import 'package:foodorderapp/screen/home/home_binding.dart';
import 'package:foodorderapp/screen/menu/menu_binding.dart';
import 'package:foodorderapp/screen/menu/menu_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screen/cat3/cat3_binding.dart';
import '../screen/cat3/cat3_screen.dart';
import '../screen/cat4/cat4_binding.dart';
import '../screen/cat4/cat4_screen.dart';
import '../screen/cat5/cat5_binding.dart';
import '../screen/cat5/cat5_screen.dart';
import '../screen/cat6/cat6_binding.dart';
import '../screen/cat6/cat6_screen.dart';
import '../screen/home/home_screen.dart';
import 'app_routes.dart';

List<GetPage> pages=[
GetPage(
name: homeScreen,
page:()=> const HomeScreen(),
binding: HomeScreenBinding()),

  GetPage(
      name: menuScreen,
      page:()=> const MenuScreen(),
      binding: MenuScreenBinding()),

  GetPage(
      name: cat1,
      page:()=> const Cat1Screen(),
      binding: Cat1ScreenBinding()),
  GetPage(
      name: cat2,
      page:()=> const Cat2Screen(),
      binding: Cat2ScreenBinding()),
  GetPage(
      name: cat3,
      page:()=> const Cat3Screen(),
      binding: Cat3ScreenBinding()),
  GetPage(
      name: cat4,
      page:()=> const Cat4Screen(),
      binding: Cat4ScreenBinding()),
  GetPage(
      name: cat5,
      page:()=> const Cat5Screen(),
      binding: Cat5ScreenBinding()),
  GetPage(
      name: cat6,
      page:()=> const Cat6Screen(),
      binding: Cat6ScreenBinding()),

];