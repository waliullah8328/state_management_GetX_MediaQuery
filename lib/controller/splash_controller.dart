import 'dart:async';

import 'package:get/get.dart';

import '../routes/route_name.dart';

class SplashController extends GetxController{
  @override
  void onReady(){
    super.onReady();
    _goToScreen();

  }

  void _goToScreen() {
    Timer(const Duration(seconds: 3), () {
      // for removing previous screen
      Get.offAllNamed(Routes.homeScreen);

    });
  }
}