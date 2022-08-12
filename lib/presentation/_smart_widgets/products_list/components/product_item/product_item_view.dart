import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/components/product_item/product_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    Key? key,
    required this.product,
    this.isReversed = false,
  }) : super(key: key);

  final Product product;
  final bool isReversed;

  List<Widget> createRow(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    List<Widget> widgets = [
      Expanded(
        flex: 3,
        child: Image.asset(
          'images/geometric/diamonds.png',
          height: double.infinity,
          color: theme.colorScheme.primary.withOpacity(.2),
        ),
      ),
      Expanded(
        flex: 2,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Using spacers for easy 1/3 margin
            const Spacer(),
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
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    ];

    return isReversed ? widgets.reversed.toList() : widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductItemViewModel>.reactive(
      viewModelBuilder: () => ProductItemViewModel(),
      builder: (context, viewModel, child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: createRow(context),
          ),
        );
      },
    );
  }
}
