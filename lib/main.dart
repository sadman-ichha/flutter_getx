import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx/route/route.dart';
import 'package:flutter_getx/views/home_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: homeScreen,
      getPages: getPages,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
