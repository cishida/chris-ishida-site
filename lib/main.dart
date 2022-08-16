import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
// import 'package:chris_ishida_site/app_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:url_strategy/url_strategy.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          title: 'Chris Ishida Site',
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
