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
        return Text('ProductsListViewModel');
      },
    );
  }
}
