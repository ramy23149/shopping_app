import 'package:flutter/material.dart';

import '../../../../../Core/constats.dart';
import '../../../../../Core/text_styles/Styles.dart';

class ProductContaner extends StatelessWidget {
  const ProductContaner({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: size.height * .3,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/bestsell2.jpg',
              ))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.2),
                  Colors.transparent
                ])),
        child: Stack(children: [
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 12,
            child: Container(
              height: 34,
              width: 34,
              decoration: const BoxDecoration(
                color: kWhite,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 20,
                    Icons.add_shopping_cart_outlined,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 9,
            child: Column(
              children: [
                const Text(
                  'Beauty',
                  style: Styles.textStyle18,
                ),
                Text(
                  '100\$',
                  style: Styles.textStyle30.copyWith(color: kWhite),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
