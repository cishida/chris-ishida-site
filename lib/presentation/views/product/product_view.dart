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
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    final Product testProduct = product ?? Products.list[0];

    return ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      builder: (context, model, child) {
        final ThemeData theme = Theme.of(context);
        final size = MediaQuery.of(context).size;

        return SingleChildScrollView(
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
                      height: size.height * .8,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            testProduct.title,
                            style: theme.textTheme.headline1,
                          ),
                          SizedBox(
                            height: Sizes.marginDefaultDouble,
                          ),
                          Text(
                            testProduct.subtitle,
                            style: theme.textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      testProduct.image,
                    ),
                  ],
                ),
              ),
              ProductContentView(
                contentList: testProduct.content,
              ),
              SizedBox(
                height: size.height * .33,
              ),
            ],
          ),
        );
      },
    );
  }
}
