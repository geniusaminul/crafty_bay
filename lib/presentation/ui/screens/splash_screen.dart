
import 'package:crafty_bay/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/home/app_logo_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToEmailVerifyScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => const MainBottomNavScreen());

  }
  @override
  void initState() {
    super.initState();
    _moveToEmailVerifyScreen();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(height: 16,),
              Text('version 1.0.0', style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}


