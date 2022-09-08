import 'package:chris_ishida_site/presentation/views/footer/footer_view.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_contact/home_contact_view.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/home_intro_view.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_products/home_products_view.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        final ThemeData theme = Theme.of(context);

        return Container(
          color: theme.colorScheme.background,
          child: SingleChildScrollView(
            controller: viewModel.scrollController,
            child: Column(
              children: const [
                HomeIntroView(),
                HomeProductsView(),
                HomeContactView(),
                FooterView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
