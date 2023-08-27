import 'dart:async';

import 'package:get/get.dart';

class SecondController extends GetxController{
  var x =0.0.obs;
  var y =0.0.obs;
  var o =0.5.obs;
@override
  void onInit() {
  Timer(const Duration(seconds: 1), () {
    x.value = x.value + .1;
    y.value = y.value + 0.1;
    o.value = o.value + .5;

  });
    super.onInit();

  }
}