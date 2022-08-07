import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/products_list_view.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_products/home_products_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeProductsView extends StatelessWidget {
  const HomeProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeProductsViewModel>.reactive(
      viewModelBuilder: () => HomeProductsViewModel(),
      builder: (context, viewModel, child) {
        return ProductsListView();
      },
    );
  }
}
