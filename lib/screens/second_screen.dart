import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_example/controller/second_controller.dart';

import '../controller/home_controller.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  final controller = Get.put(SecondController());
   final homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // for screen size maintain
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(


      ),
      body: Column(

        children: [
          Text("Screen Height : ${MediaQuery.of(context).size.height}"),
          Text("Screen Width : ${MediaQuery.of(context).size.width}"),
          const SizedBox(height: 20,),

          const Text(
            'You have pushed the button this many times:',
          ),
           Text(
            '${homecontroller.counter.value}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Obx(() => Transform.translate(
            offset:  Offset(controller.x.value, controller.y.value),
            child: Opacity(
              opacity: controller.o.value,
              child: Container(
                color: Colors.blue,
                height: h*.4,
                width: w>500 ?w*.8: w*.6,



                ),
            ),
          )),

        ],
      ),
    );
  }
}
