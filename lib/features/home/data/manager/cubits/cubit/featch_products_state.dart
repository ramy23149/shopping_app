part of 'featch_products_cubit.dart';

sealed class FeatchProductsState extends Equatable {
  const FeatchProductsState();

  @override
  List<Object> get props => [];
}

final class FeatchProductsInitial extends FeatchProductsState {}

final class FeatchProductsLoading extends FeatchProductsState {}

final class FeatchProductsSuccess extends FeatchProductsState {
  final List<ProductModel> products;
  const FeatchProductsSuccess(this.products);
}

final class FeatchProductsFailure extends FeatchProductsState {
  final String errorMessage;
  const FeatchProductsFailure(this.errorMessage);
}
