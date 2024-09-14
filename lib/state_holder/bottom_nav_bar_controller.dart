import 'package:get/get.dart';

class BottomNavBarController extends GetxController{
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void changedIndex(int index){
    _selectedIndex = index;
    update();
  }

  void selectCategoryTab(){
    changedIndex(1);
  }
  void backToHome(){
    changedIndex(0);
  }
}
