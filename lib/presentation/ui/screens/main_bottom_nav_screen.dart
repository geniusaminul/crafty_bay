import 'package:crafty_bay/presentation/ui/Utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/screens/cart_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/categories_list_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/home_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holder/bottom_nav_bar_controller.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final BottomNavBarController _navBarController =
      Get.find<BottomNavBarController>();
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoriesListScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (_) {
      return Scaffold(
        body: _screens[_navBarController.selectedIndex],
        bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.white,
            elevation: 2,
            indicatorShape: const RoundedRectangleBorder(side: BorderSide.none),
            indicatorColor: Colors.white,
            selectedIndex: _navBarController.selectedIndex,
            onDestinationSelected: _navBarController.changedIndex,
            destinations: [
              NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: _navBarController.selectedIndex == 0
                      ? AppColors.themeColor
                      : null,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                  icon: Icon(
                    Icons.category_sharp,
                    color: _navBarController.selectedIndex == 1
                        ? AppColors.themeColor
                        : null,
                  ),
                  label: 'Categories'),
              NavigationDestination(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: _navBarController.selectedIndex == 2
                        ? AppColors.themeColor
                        : null,
                  ),
                  label: 'Cart'),
              NavigationDestination(
                  icon: Icon(
                    Icons.card_giftcard,
                    color: _navBarController.selectedIndex == 3
                        ? AppColors.themeColor
                        : null,
                  ),
                  label: 'Wish'),
            ]),
      );
    });
  }
}
