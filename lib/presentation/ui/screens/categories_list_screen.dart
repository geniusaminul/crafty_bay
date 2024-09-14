import 'package:crafty_bay/presentation/ui/widgets/category_card.dart';
import 'package:crafty_bay/state_holder/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({super.key});

  @override
  State<CategoriesListScreen> createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
       canPop: false,
      onPopInvokedWithResult: (_, __){
         return backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey)),
          title: const Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          leading: IconButton(onPressed: (){
           backToHome();
          }, icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: GridView.builder(
            itemCount: 20,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: .78),
              itemBuilder: (context, index) => const CategoryCard(),),
        ),
      ),
    );
  }
  void backToHome(){
    Get.find<BottomNavBarController>().backToHome();
  }
}
