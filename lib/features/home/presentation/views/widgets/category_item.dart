import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../Core/text_styles/Styles.dart';
import '../pruduct_detailes_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.aspectRatio,
  });
  final String image, title;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PruductDetailesView(
              image: image,
              title: title,
            ),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            //  padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent
                        ]),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(title,
                        style: Styles.textStyle20Extra
                            .copyWith(color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
