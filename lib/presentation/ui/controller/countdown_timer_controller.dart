import 'package:get/get.dart';

class CountdownTimerController extends GetxController{
  var count = 120.obs;
  decrement ()=> count--;

}