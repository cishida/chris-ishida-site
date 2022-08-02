import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/components/top_navbar/top_navbar_view.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/nav_container_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavContainerView extends StatelessWidget {
  const NavContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavContainerViewModel>.reactive(
      viewModelBuilder: () => NavContainerViewModel(),
      builder: (context, viewModel, child) {
        // ThemeData theme = Theme.of(context);

        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const TopNavbarView(),
                Expanded(
                  child: ExtendedNavigator(
                    router: NavContainerViewRouter(),
                    navigatorKey: StackedService.nestedNavigationKey(
                      RouterIds.navContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
