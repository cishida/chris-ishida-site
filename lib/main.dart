import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
// import 'package:chris_ishida_site/app_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:url_strategy/url_strategy.dart';

final List _allImages = [
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}portraits/chris-masked.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/superconnector/main.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/superconnector/group.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/surgeryos/main.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/surgeryos/inventory.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/locent/main.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/locent/clearcart.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/refercare/main.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/refercare/app-shop.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/mills/main.png',
  '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}products/mills/violano.jpeg',
];

Future main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  binding.addPostFrameCallback((_) async {
    final context = binding.renderViewElement;
    if (context != null) {
      for (var asset in _allImages) {
        precacheImage(AssetImage(asset), context);
      }
    }
  });

  await setupLocator();

  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();

  // Use spelling initialise because package requires it. Use 'ize' elsewhere
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData dark = FlexThemeData.dark(scheme: FlexScheme.materialBaseline);
    // dark = dark.copyWith(textTheme: dark.textTheme. );

    return ThemeBuilder(
      defaultThemeMode: ThemeMode.dark,
      darkTheme: dark,
      lightTheme: FlexThemeData.light(scheme: FlexScheme.materialBaseline),
      builder: (context, regularTheme, darkTheme, themeMode) {
        return MaterialApp(
          title: 'Chris Ishida Portfolio',
          // theme: app_theme(), TODO: Take a second look at theming
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          // navigatorObservers: [StackedService.routeObserver],
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        );
      },
    );
  }
}
