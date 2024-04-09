import 'package:flutter/material.dart';

import '../../../../../Core/constats.dart';
import '../../../../../Core/text_styles/Styles.dart';
import 'custom_appbar.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHomeAppbar(),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our New Products',
                style: Styles.textStyle30,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'VIEW MORE  ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kWhite,
                    size: 13,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
