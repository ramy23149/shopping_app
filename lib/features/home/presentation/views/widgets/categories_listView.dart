import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: const [
        CategoryItem(
          aspectRatio: 2.2 / 2,
          image: 'assets/images/bestsell0.jpg',
          title: 'Beauty',
        ),
        CategoryItem(
            aspectRatio: 2.2 / 2,
            image: 'assets/images/category1.jpg',
            title: 'Moda'),
        CategoryItem(
          aspectRatio: 2.2 / 2,
          image: 'assets/images/category2.jpg',
          title: 'Perfume',
        ),
        CategoryItem(
          aspectRatio: 2.2 / 2,
          image: 'assets/images/category3.jpg',
          title: 'Glass',
        ),
      ],
    );
  }
}
