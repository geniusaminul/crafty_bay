import 'package:crafty_bay/presentation/ui/Utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/color_picker.dart';
import 'package:crafty_bay/presentation/ui/widgets/product_image_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/quantity_count_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/size_picker.dart';
import 'package:crafty_bay/state_holder/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}


class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        return backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
          leading: IconButton(onPressed: () {
            backToHome();
          } , icon: const Icon(Icons.arrow_back_ios)),

        ),
          body: Column(
            children: [
              Expanded(
                  child: _productDetailsSection(context)),
              _buildPriceAndCartSection()
            ],
          )),
    );
  }

  Widget _productDetailsSection(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductImageSlider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNameAndQuantitySection(context),
                const SizedBox(
                  height: 8,
                ),
                _buildReviewsSection(),
                const SizedBox(
                  height: 16,
                ),
                ColorPicker(colors: const [
                  Colors.black,
                  Colors.grey,
                  Colors.pink,
                  Colors.blue
                ], onColorSelected: (onColorSelected) {}),
                const SizedBox(
                  height: 16,
                ),
                SizePicker(
                    sizes: const ['S', 'M', 'L', 'XL'],
                    onSizeSelected: (onSizeSelected) {}),
                const SizedBox(
                  height: 20,
                ),
                _buildDescriptionSection(context),
                const SizedBox(height: 16),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          '''Item Count Number Button is a Flutter package that allows you to easily implement a customizable item count widget with increment and decrement buttons. This widget is particularly useful in scenarios where you need to manage the quantity of items, such as in a shopping cart or inventory management system''',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Widget _buildReviewsSection() {
    return SizedBox(
      width: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 18,
              ),
              Text(
                '4.5',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Text(
            'Reviews',
            style: TextStyle(
                color: AppColors.themeColor, fontWeight: FontWeight.w500),
          ),
          Card(
            color: AppColors.themeColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
      ),
    );
  }

  Widget _buildNameAndQuantitySection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Happy New Year Special Shoe',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const QuantityCountButton(), 
      ],
    );
  }

  Widget _buildPriceAndCartSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.themeColor.withOpacity(.1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Text(
                'Price',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                '\$1,000',
                style: TextStyle(
                    color: AppColors.themeColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
              width: 120,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('Add To Cart', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)))
        ],
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().backToHome();
  }
}
