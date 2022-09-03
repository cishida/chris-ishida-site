import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/_smart_widgets/products_list/products_list_view.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/section_header.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_products/home_products_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class HomeProductsView extends StatelessWidget {
  const HomeProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeProductsViewModel>.reactive(
      viewModelBuilder: () => HomeProductsViewModel(),
      builder: (context, viewModel, child) {
        final Size size = MediaQuery.of(context).size;

        return Padding(
          padding: EdgeInsets.only(
            left: getDeviceType(size) == DeviceScreenType.desktop
                ? size.width * Sizes.siteWideLeftMarginPercent
                : Sizes.marginDefaultDouble,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SectionHeader(
                title: Strings.productsHeader,
              ),
              ProductsListView(),
            ],
          ),
        );
      },
    );
  }
}
