import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/Core/text_styles/Styles.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/best_selling_listView.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/categories_listView.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/image_contaner.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? fadeController;
  Animation<double>? fadeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fadeAnimatoin();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    fadeController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FadeTransition(
        opacity: fadeAnimation!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageContaner(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: Styles.textStyle20Extra,
                  ),
                  Text(
                    'All',
                    style: Styles.textStyle14,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
                child: const CategoriesListView()),
            const SizedBox(
              height: 45,
            ),
            const Text(
              '   Best Selling by Categories',
              style: Styles.textStyle20Extra,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
                child: const BestSillListView())
          ],
        ),
      ),
    );
  }

  fadeAnimatoin() {
    fadeController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    fadeAnimation = Tween<double>(begin: .2, end: 1).animate(fadeController!);
    fadeController!.forward();
  }
}
