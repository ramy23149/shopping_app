import 'package:flutter/material.dart';

import 'container_body.dart';

class ImageContaner extends StatelessWidget {
  const ImageContaner({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    precacheImage(const AssetImage('assets/images/background.jpg'), context);
    return Container(
      height: size.height / 2,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background.jpg"),
        fit: BoxFit.cover,
      )),
      child: Container(
        height: size.height / 2,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.01),
              ]),
        ),
        child: const ContainerBody(),
      ),
    );
  }
}
