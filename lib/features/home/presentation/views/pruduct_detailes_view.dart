import 'package:flutter/material.dart';

import 'widgets/detailes_body.dart';

class PruductDetailesView extends StatelessWidget {
  const PruductDetailesView({super.key, required this.image, required this.title});
  static const String id = 'PruductDetailesView';
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
          body: DetailesBody(
            image: image,
            title: title,
          ),
      ));
  }
}