import 'package:dartz/dartz.dart';
import 'package:shopping_app/Core/falier/falier.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failer, List<ProductModel>>> fetchProducts({required String endPoint});
}
