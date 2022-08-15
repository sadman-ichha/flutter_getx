import 'package:flutter_getx/views/details_screen.dart';
import 'package:flutter_getx/views/home_screen.dart';
import 'package:flutter_getx/views/second_screen.dart';
import 'package:flutter_getx/views/third_screen.dart';
import 'package:get/get.dart';

const String homeScreen = "/home-screen";
const String secondScreen = "/second-screen";
const String thirdScreen = "/third-screen";
const String detailsScreen = "/details-screen";

List<GetPage> getPages = [
  GetPage(
    name: homeScreen,
    page: () => HomeScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: secondScreen,
    page: () => SecondScreen(),
    transition: Transition.leftToRightWithFade,
  ),
  GetPage(
    name: thirdScreen,
    page: () => ThirdScreen(),
  ),
  GetPage(
    name: detailsScreen,
    page: () => DetailsScreen(),
  )
];
