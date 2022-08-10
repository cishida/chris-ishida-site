import 'package:chris_ishida_site/_constants/products.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/components/product_item/product_item_view.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/products_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductsListViewModel>.reactive(
      viewModelBuilder: () => ProductsListViewModel(),
      builder: (context, viewModel, child) {
        final List<Product> products = Products.list;

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItemView(
              product: products[index],
            );
          },
        );
      },
    );
  }
}
