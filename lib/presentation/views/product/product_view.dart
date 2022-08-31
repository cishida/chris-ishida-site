import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/_constants/products.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:chris_ishida_site/presentation/views/product/components/product_content_view.dart';
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
      builder: (context, model, child) {
        final ThemeData theme = Theme.of(context);
        final size = MediaQuery.of(context).size;

        return Container(
          color: theme.colorScheme.background,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * Sizes.siteWideLeftMarginPercent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .6,
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: Sizes.marginDefaultDouble,
                            ),
                            Hero(
                              tag: product.title,
                              child: Text(
                                '${product.title} ',
                                style: theme.textTheme.headline1,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: Sizes.marginDefaultDouble,
                            ),
                            Hero(
                              tag: product.subtitle,
                              child: Text(
                                '${product.subtitle} ',
                                style: theme.textTheme.headline5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Hero(
                      //   tag: product.image,
                      //   child:
                      Image.asset(
                        product.image,
                      ),
                      // ),
                    ],
                  ),
                ),
                ProductContentView(
                  contentList: product.content,
                ),
                SizedBox(
                  height: size.height * .33,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
