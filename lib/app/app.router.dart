// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../core/models/product/product.dart';
import '../presentation/views/home/home_view.dart';
import '../presentation/views/nav_container/nav_container_view.dart';
import '../presentation/views/product/product_view.dart';

class Routes {
  static const String navContainerView = '/';
  static const all = <String>{
    navContainerView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(
      Routes.navContainerView,
      page: NavContainerView,
      generator: NavContainerViewRouter(),
    ),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    NavContainerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NavContainerView(),
        settings: data,
      );
    },
  };
}

class NavContainerViewRoutes {
  static const String homeView = '/';
  static const String productView = '/product-view';
  static const all = <String>{
    homeView,
    productView,
  };
}

class NavContainerViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(NavContainerViewRoutes.homeView, page: HomeView),
    RouteDef(NavContainerViewRoutes.productView, page: ProductView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeView(),
        settings: data,
        opaque: false,
        transitionsBuilder: data.transition ?? TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 450),
        reverseTransitionDuration: const Duration(milliseconds: 450),
      );
    },
    ProductView: (data) {
      var args = data.getArgs<ProductViewArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProductView(
          key: args.key,
          product: args.product,
        ),
        settings: data,
        opaque: false,
        transitionsBuilder: data.transition ?? TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 450),
        reverseTransitionDuration: const Duration(milliseconds: 450),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProductView arguments holder class
class ProductViewArguments {
  final Key? key;
  final Product product;
  ProductViewArguments({this.key, required this.product});
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToNavContainerView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.navContainerView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToNestedHomeView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      NavContainerViewRoutes.homeView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToNestedProductView({
    Key? key,
    required Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      NavContainerViewRoutes.productView,
      arguments: ProductViewArguments(key: key, product: product),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
