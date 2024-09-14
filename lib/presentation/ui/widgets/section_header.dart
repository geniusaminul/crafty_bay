import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,  required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
        GestureDetector(
          onTap: onTap,
          child: const Text('See All', style: TextStyle(color: AppColors.themeColor),),
        )

      ],
    );
  }
}