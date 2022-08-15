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
    final TextAlign textAlign = isReversed ? TextAlign.left : TextAlign.right;
    final Alignment alignment =
        isReversed ? Alignment.centerRight : Alignment.centerLeft;

    List<Widget> widgets = [
      Expanded(
        flex: 3,
        child: Align(
          alignment: alignment,
          child: Image.asset(
            product.image,
            // height: double.infinity,
          ),
        ),
      ),
      SizedBox(
        width: Sizes.marginDefaultDouble,
      ),
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              isReversed ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Text(
              product.title,
              textAlign: textAlign,
              style: theme.textTheme.headline4,
            ),
            SizedBox(
              height: Sizes.marginDefaultDouble,
            ),
            Text(
              product.subtitle,
              textAlign: textAlign,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: Sizes.marginDefaultDouble,
            ),
            Text(
              product.technologies.join(' | '),
              textAlign: textAlign,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: Sizes.marginDefaultDouble,
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Learn More');
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                  color: theme.colorScheme.primary,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.marginDefaultHalf,
                  vertical: Sizes.marginDefault,
                ),
                child: Text(
                  'Learn More',
                  style: theme.textTheme.button?.copyWith(
                    fontSize: 18.0,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
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
          height: MediaQuery.of(context).size.height * .5,
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
