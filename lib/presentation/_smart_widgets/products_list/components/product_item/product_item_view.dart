import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/components/product_item/product_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    Key? key,
    required this.product,
    this.isReversed = false,
  }) : super(key: key);

  final Product product;
  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductItemViewModel>.reactive(
      viewModelBuilder: () => ProductItemViewModel(),
      builder: (context, viewModel, child) {
        final ThemeData theme = Theme.of(context);
        final Size size = MediaQuery.of(context).size;
        var deviceType = getDeviceType(size);

        TextStyle? titleStyle = theme.textTheme.headline1?.copyWith(
          fontFamily: 'SourceSansPro',
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.inverseSurface,
        );

        double height = 250.0;

        if (deviceType != DeviceScreenType.desktop) {
          titleStyle = theme.textTheme.headline3?.copyWith(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.inverseSurface,
          );
          height = 200;
        }

        return SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          height: height,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            hitTestBehavior: HitTestBehavior.opaque,
            onEnter: (event) => viewModel.onEnter(),
            onExit: (event) => viewModel.onExit(),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => viewModel.onLearnMore(product),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    left: viewModel.isHovering ? 50 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: product.title,
                          child: Text(
                            '${product.title} ',
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: titleStyle,
                          ),
                        ),
                        Hero(
                          tag: product.subtitle,
                          child: SizedBox(
                            width: size.width * .8,
                            child: Text(
                              '${product.subtitle} ',
                              textAlign: TextAlign.left,
                              style: theme.textTheme.headline6?.copyWith(
                                fontSize: 18.0,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Hero(
                  //   tag: product.image,
                  //   child: Image.asset(
                  //     product.image,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: createRow(
          //     context,
          //     () => viewModel.onLearnMore(product),
          //   ),
          // ),
        );
      },
    );
  }
}
