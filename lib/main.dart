import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_app/features/home/presentation/views/home_view.dart';
import 'package:shopping_app/features/home/presentation/views/pruduct_detailes_view.dart';
import 'package:shopping_app/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(textTheme: const TextTheme()),
      home: const SplashView(),
        
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
    );
  }
}
