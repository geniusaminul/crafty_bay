
import 'package:crafty_bay/presentation/ui/Utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/screens/categories_list_screen.dart';
import 'package:crafty_bay/state_holder/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widgets/widgets_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16,),
              SearchTextField(textEditingController: TextEditingController(),),
              const SizedBox(height: 16,),
              const HomeBannerSlider(),
              const SizedBox(height: 8,),
              _productCategorySection(),
              const SizedBox(height: 8,),
              _buildPopularProductSection(),
              const SizedBox(height: 16,),
              _buildNewProductSection(),
              const SizedBox(height: 16,),
              _buildSpecialProductSection(),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildSpecialProductSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: 'Special',
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 170,
          child: HorizontalListView(),
        ),
      ],
    );
  }
  Widget _buildNewProductSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: 'New',
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 170,
          child: HorizontalListView(),
        ),
      ],
    );
  }
  Widget _buildPopularProductSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: 'Popular',
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 170,
          child: HorizontalListView(),
        ),
      ],
    );
  }
  Widget _productCategorySection() {
    return Column(
      children: [
        SectionHeader(title: 'All Categories', onTap: (){
          Get.find<BottomNavBarController>().selectCategoryTab();
        }),
        const SizedBox(height: 8,),
        const SizedBox(
          height: 120,
          child: HorizontalCategoryListView(),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetPath.logoNavImage),
      actions: [
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.person,
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.notifications,
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}















