import 'package:crafty_bay/presentation/ui/Utils/assets_path.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetPath.logoImage);
  }
}