import 'package:flutter/material.dart';

import 'package:shopping_app/Core/constats.dart';
import 'package:shopping_app/Core/text_styles/Styles.dart';
import 'package:shopping_app/Core/widgets/custom_bottom.dart';
import 'package:shopping_app/features/home/presentation/views/home_view.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  bool showContainer = false;

  late AnimationController scaleController;
  AnimationController? slideController;
  late Animation<double> scaleAnimtoin;
  Animation<Offset>? slideAnimation;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    scaleAnimtoin = Tween<double>(begin: 0, end: 1).animate(scaleController)
      ..addListener(() {
        setState(() {});
      });
    startSlideAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scaleController.dispose();
    super.dispose();
  }

  void getPressed() {
    setState(() {
      showContainer = true;
    });
    scaleController.forward().whenComplete(() {
      Navigator.of(context).pushReplacementNamed(HomeView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: scaleController,
      builder: (context, child) {
        return showContainer == false
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SlideTransition(
                    position: slideAnimation!,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Brand New',
                          style: Styles.textStyle30,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Text(
                          'Perspective',
                          style: Styles.textStyle30,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Text(
                          'Let\'s start with our collections',
                          style: Styles.textStyle16
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: size.height * 0.14,
                        ),
                        CustomBotton(
                            onPressed: getPressed,
                            width: size.width,
                            text: 'Get Start'),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        CustomBotton(
                          width: size.width,
                          textColor: kWhite,
                          backgroundColor: Colors.transparent,
                          text: 'Create Account',
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Transform.scale(
                alignment: Alignment.bottomCenter,
                scale: scaleAnimtoin.value,
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: kWhite,
                ));
      },
    );
  }
    void startSlideAnimation() {
    slideController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));

    slideAnimation =
        Tween<Offset>(begin: const Offset(0, -.08), end: const Offset(0, 0))
            .animate(slideController!);
    slideController!.forward();
  }
}
