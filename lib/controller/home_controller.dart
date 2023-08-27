
import 'package:get/get.dart';
import 'package:state_management_example/routes/route_name.dart';
import 'package:state_management_example/screens/second_screen.dart';

class HomeController extends GetxController{

  RxInt counter = 0.obs;
  /*
  RxString name ="".obs;
  RxDouble doubleValue = 10.0.obs;
  RxBool boolValue = false.obs;
  RxList list = [].obs;
  RxMap map ={}.obs;

   */

  void incrementCounter(){
    counter.value++;

  }

  void goToSecondScreen() {
    // Have Backing screen
    Get.toNamed(Routes.secondScreen);
    //Get.to(SecondScreen());
  }
}