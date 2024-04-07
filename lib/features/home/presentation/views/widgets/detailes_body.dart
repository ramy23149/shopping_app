import 'package:flutter/material.dart';
import 'package:shopping_app/Core/constats.dart';
import 'package:shopping_app/Core/text_styles/Styles.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/detailes_image.dart';

import 'product_list_view.dart';

class DetailesBody extends StatelessWidget {
  const DetailesBody({super.key, required this.image, required this.title});
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
         SliverToBoxAdapter(
          child: Column(
            
            children: [
              CategoryImage(
                image: image,
                title: title,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'New Product',
                    style: Styles.textStyle20.copyWith(color: kBlack),
                  ),
                  const Spacer(),
                  const Text(
                    'View More',
                    style: Styles.textStyle14,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: ProductListView()
        )
        
      ],
     
    );
  }
}

