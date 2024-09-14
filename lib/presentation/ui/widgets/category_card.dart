import 'package:crafty_bay/presentation/ui/screens/product_category_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Utils/app_colors.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ProductCategoryScreens(categoryName: 'Electronics'));
      },
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.themeColor.withOpacity(.1),
            ),
            child: const Icon(Icons.laptop, size: 44, color: AppColors.themeColor,),
          ),
          const SizedBox(height: 6,),
          const Text('Electronics', style: TextStyle(fontSize: 14, color: AppColors.themeColor))
        ],
      ),
    );
  }
}