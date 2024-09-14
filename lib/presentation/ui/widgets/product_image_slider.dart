import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/ui/Utils/assets_path.dart';
import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';
class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({
    super.key

  });

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final ValueNotifier <int> _selectedIndex = ValueNotifier(0);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220.0,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            viewportFraction: 1,

            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },


          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: Colors.grey.shade100,
                        image: const DecorationImage(image: AssetImage(AssetPath.shoeImage),
                        )
                    ),
                   
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 12,
          child: ValueListenableBuilder(
              valueListenable: _selectedIndex,
              builder: (context, currentIndex, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        height: 14,
                        width: 14,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                            color:
                            currentIndex == i ? AppColors.themeColor : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                           ),
                      )
                  ],
                );
              }),
        )
      ],
    );
  }
  @override
  void dispose() {
    super.dispose();
    _selectedIndex.dispose();
  }
}
