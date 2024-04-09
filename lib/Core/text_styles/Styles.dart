import 'package:flutter/material.dart';

import '../constats.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Poppins');

  static const textStyle20 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 20, fontFamily: 'Poppins');

  static const textStyle20Extra = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontSize: 20,
      fontFamily: 'Poppins');

  static const textStyle30 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Poppins');

  static const textStyle14 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: Color.fromARGB(255, 119, 118, 118),
      fontFamily: kPoppins);

  static const textStyle16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}
