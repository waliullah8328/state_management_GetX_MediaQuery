import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../binding/splash_binding.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/splash_screen.dart';

class Routes {
  static const String homeScreen = "/homeScreen";
  static const String splashScreen = "/splashScreen";
  static const String secondScreen = "/secondScreen";


  static var list =[

    GetPage(name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(name: homeScreen,
        page: () => MyHomePage(),
    ),

    GetPage(name: secondScreen,
      page: () => SecondScreen(),
      curve: Curves.bounceInOut,
    ),
  ];
}