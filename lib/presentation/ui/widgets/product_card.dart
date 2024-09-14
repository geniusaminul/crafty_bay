import 'package:crafty_bay/presentation/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Utils/app_colors.dart';
import '../Utils/assets_path.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      child: SizedBox(
        width: 116,
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(()=> const ProductDetailsScreen());
              },
              child: Container(
                width: 116,
                height: 100,
                padding: const EdgeInsets.all(16),
                decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)
                    ),
                    color: AppColors.themeColor.withOpacity(.1),
                    image: const DecorationImage(
                      image: AssetImage(AssetPath.shoeImage),
                      fit: BoxFit.scaleDown,

                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:4, vertical: 4),
              child: Column(
                children: [
                  const Text('New Year Special Shoe 30', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600 ),maxLines: 1,),
                  _priceReviewSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _priceReviewSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '\$100',
          style: TextStyle(
              color: AppColors.themeColor, fontWeight: FontWeight.w500),
        ),
        const Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            Text(
              '4.5',
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Card(
          color: AppColors.themeColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 14,
            ),
          ),
        )
      ],
    );
  }
}