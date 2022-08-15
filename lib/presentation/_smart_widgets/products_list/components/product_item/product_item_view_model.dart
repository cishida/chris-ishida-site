import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductItemViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void onLearnMore(Product product) {
    _navigationService.navigateTo(
      NavContainerViewRoutes.productView,
      id: RouterIds.navContainer,
      arguments: ProductViewArguments(product: product),
    );
  }
}
