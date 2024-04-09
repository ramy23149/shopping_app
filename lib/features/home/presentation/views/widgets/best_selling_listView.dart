import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/category_item.dart';

class BestSillListView extends StatelessWidget {
  const BestSillListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CategoryItem(
          aspectRatio: 3 / 2,
          image: 'assets/images/bestsell1.jpg',
          title: 'Clothes',
        ),
        CategoryItem(
            aspectRatio: 3 / 2,
            image: 'assets/images/bestsell3.jpg',
            title: 'Tech'),
        CategoryItem(
          aspectRatio: 3 / 2,
          image: 'assets/images/bestsell4.jpg',
          title: 'Smart',
        ),
        CategoryItem(
          aspectRatio: 3 / 2,
          image: 'assets/images/bestsell5.jpg',
          title: 'Watch',
        ),
      ],
    );
  }
}
