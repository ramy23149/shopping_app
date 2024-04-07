import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = "home_view";

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}
