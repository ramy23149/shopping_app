import 'package:flutter/material.dart';

import '../../../../../Core/text_styles/Styles.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({super.key, required this.image, required this.title});
  final String image,title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    precacheImage( AssetImage(image), context);
    return Container(
      height: size.height / 2.5,
      decoration:  BoxDecoration(
          image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )),
      child: Container(
        height: size.height / 2,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.01),
              ]),
        ),
        child: Column(
          
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ))
              ],
            ),
            const Spacer(flex: 6,),
            Center(
              child: Text(
                title,
                style: Styles.textStyle30
                    .copyWith(color: Colors.white, fontSize: 35),
              ),
            ),
            const Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}
