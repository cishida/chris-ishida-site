import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/components/top_navbar/components/top_navbar_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TopNavbarViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onLogoTap(BuildContext context) {
    _navigationService.navigateTo(
      NavContainerViewRoutes.homeView,
      id: RouterIds.navContainer,
    );
  }

  List<Widget> navItems() {
    return Strings.pageNames
        .asMap()
        .entries
        .map(
          (e) => TopNavbarButton(
            label: e.value,
            index: e.key,
          ),
        )
        .toList();
  }
}
