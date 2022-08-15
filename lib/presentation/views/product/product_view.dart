import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/views/product/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(product.title),
        ),
      ),
    );
  }
}
