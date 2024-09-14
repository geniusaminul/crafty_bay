import 'package:flutter/material.dart';

import '../category_card.dart';
class HorizontalCategoryListView extends StatelessWidget {
  const HorizontalCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return const CategoryCard();
      },
      separatorBuilder: (_, __) {
        return const SizedBox(
          width: 15,
        );
      },
    );
  }
}