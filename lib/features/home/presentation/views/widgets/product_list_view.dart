import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/data/manager/cubits/cubit/featch_products_cubit.dart';

import '../../../../../Core/widgets/custom_loadingIndecator.dart';
import 'product_list_view_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchProductsCubit, FeatchProductsState>(
      builder: (context, state) {
        if (state is FeatchProductsFailure) {
          return Text(state.errorMessage,style: const TextStyle(fontSize: 40),);
        }else if(state is FeatchProductsSuccess){
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return  ProductContaner(
                productModel: state.products[index],
              );
            });
        }
        return const CustomLoadingIndecator();
      },
    );
  }
}
