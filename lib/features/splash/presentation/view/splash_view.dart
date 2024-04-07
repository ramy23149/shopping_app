import 'package:flutter/material.dart';

import 'widgets/splash_Body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = "splash_view";

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
      body: SplashViewBody()
      ),
    );
  }
}