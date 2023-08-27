import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';



class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final controller = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text("Dashboard"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
              '${controller.counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            )),

            TextButton(onPressed: controller.goToSecondScreen, child:const Text("Go to next")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
