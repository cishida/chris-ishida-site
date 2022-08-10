import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/components/product_item/product_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductItemViewModel>.reactive(
      viewModelBuilder: () => ProductItemViewModel(),
      builder: (context, viewModel, child) {
        final ThemeData theme = Theme.of(context);

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/geometric/diamonds.png',
                  width: 500.0,
                  color: theme.colorScheme.primary.withOpacity(.2),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    product.title,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.headline4,
                  ),
                  SizedBox(
                    height: Sizes.marginDefaultDouble,
                  ),
                  Text(
                    product.subtitle,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
