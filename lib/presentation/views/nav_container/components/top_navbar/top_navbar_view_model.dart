import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/components/top_navbar/components/top_navbar_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class TopNavbarViewModel extends BaseViewModel {
  late ThemeMode _mode;
  bool get isThemeDark => _mode == ThemeMode.dark;
  final _navigationService = locator<NavigationService>();

  void initialize(BuildContext context) {
    // Set theme on initialize for switch value
    final themeModel = getThemeManager(context).getSelectedTheme();

    // If mode has been set to light then use light else default dark
    _mode = themeModel.themeMode == ThemeMode.light
        ? ThemeMode.light
        : ThemeMode.dark;
  }

  void onLogoTap(BuildContext context) {
    _navigationService.navigateTo(
      NavContainerViewRoutes.homeView,
      id: RouterIds.navContainer,
    );
  }

  List<TopNavbarButton> navItemButtons() {
    return Data.navItems.map(
      (navItemData) {
        return TopNavbarButton(
          data: navItemData,
          onPressed: () {
            _navigationService.navigateTo(
              navItemData.routeName,
              id: RouterIds.navContainer,
            );
          },
        );
      },
    ).toList();
  }

  void setThemeMode(bool value, BuildContext context) {
    _mode = value ? ThemeMode.dark : ThemeMode.light;

    getThemeManager(context).setThemeMode(_mode);
    notifyListeners();
  }
}
