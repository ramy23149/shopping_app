import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/Core/api_service.dart';
import 'package:shopping_app/features/home/data/manager/cubits/cubit/featch_products_cubit.dart';
import '../../data/models/product_model/product_model.dart';
import '../../data/repos/home_repo_impl.dart';
import 'widgets/detailes_body.dart';

class PruductDetailesView extends StatelessWidget {
  const PruductDetailesView(
      {super.key, required this.image, required this.title});
  static const String id = 'PruductDetailesView';
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeatchProductsCubit(
          HomeRepoImpl(ApiService(Dio())), const ProductModel())
        ..featchProducts(endPoint: title),
      child: SafeArea(
          child: Scaffold(
        body: DetailesBody(
          image: image,
          title: title,
        ),
      )),
    );
  }
}
