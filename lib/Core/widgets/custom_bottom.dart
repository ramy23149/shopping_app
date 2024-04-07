import 'package:flutter/material.dart';
import 'package:shopping_app/Core/constats.dart';

import '../text_styles/Styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      this.backgroundColor,
      this.textColor,
      required this.text,
      this.onPressed, this.width});

  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final void Function()? onPressed;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width?? MediaQuery.of(context).size.width / 2,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: kWhite
              ),
                borderRadius:BorderRadius.circular(90),
                ),
                
            backgroundColor: backgroundColor ?? Colors.white),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: textColor ?? Colors.black,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
