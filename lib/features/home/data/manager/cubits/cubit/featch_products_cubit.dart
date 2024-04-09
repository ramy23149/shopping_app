import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';

import '../../../models/product_model/product_model.dart';

part 'featch_products_state.dart';

class FeatchProductsCubit extends Cubit<FeatchProductsState> {
  FeatchProductsCubit(
    this.homeRepo, this.productModel,
  ) : super(FeatchProductsInitial());
  final HomeRepo homeRepo;
final  ProductModel productModel;

  Future<void> featchProducts({required String endPoint}) async {
    emit(FeatchProductsLoading());
    var result = await homeRepo.fetchProducts(endPoint: endPoint);

    result.fold((failer) => emit(FeatchProductsFailure(failer.errMasessge)),
        (products) => emit(FeatchProductsSuccess(products)));
  }
}
