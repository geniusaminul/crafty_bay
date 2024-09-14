
import 'package:flutter/material.dart';

import 'widgets_export.dart';
class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (_, __) => const SizedBox(width: 6),
        itemCount: 6);
  }
}