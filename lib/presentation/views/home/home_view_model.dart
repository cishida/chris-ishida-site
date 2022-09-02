import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void onProductsButton() {
    // _navigationService.navigateTo(
    //   NavContainerViewRoutes.productsView,
    //   id: RouterIds.navContainer,
    // );
  }
}
