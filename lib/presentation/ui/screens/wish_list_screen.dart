import 'package:flutter/material.dart ';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../state_holder/bottom_nav_bar_controller.dart';
import '../widgets/product_card.dart';
class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ( _, __){
        return backToHome();
      },

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wish List'),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey.shade200),
          ),
          leading: IconButton(onPressed: (){
            backToHome();
          }, icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: .75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return const ProductCard();
            },
          ),
        ),
      ),
    );
  }
  void backToHome(){
    Get.find<BottomNavBarController>().backToHome();
  }

}
