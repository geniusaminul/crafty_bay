import 'package:crafty_bay/controller_binder.dart';
import 'package:crafty_bay/presentation/ui/Utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen() ,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(vertical: 12),
            elevation: 0,
            textStyle: const TextStyle(
              fontSize: 16
            )


          )
        ),
        inputDecorationTheme:  InputDecorationTheme(
          border: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          errorBorder:_outlineInputBorder(Colors.red),
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black38


          )
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),

        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white
        ),
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor
        ),



      ),
    );
  }
  OutlineInputBorder _outlineInputBorder ([Color? color]){
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? AppColors.themeColor, width: 1),
        borderRadius: BorderRadius.circular(8),

    );
  }
}
