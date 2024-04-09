import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/Core/api_service.dart';

import 'package:shopping_app/Core/falier/falier.dart';

import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failer, List<ProductModel>>> fetchProducts(
      {required String endPoint}) async {
    try {
  List data = await apiService.get(endPoint: endPoint);
  List<ProductModel> dataList = [];
  for (var product in data) {
    dataList.add(ProductModel.fromJson(product));
  }
    return right(dataList);
}  catch (e) {
  if (e is DioException) {
    return left(ServerFailer(e.message??'oops something went wrong'));
  }else{
    return left(ServerFailer(e.toString()));
  }
}
  
  }
}
