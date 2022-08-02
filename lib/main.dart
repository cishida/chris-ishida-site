import 'package:chris_ishida_site/app/app.locator.dart';
import 'package:chris_ishida_site/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  // Use spelling initialise because package requires it. Use 'ize' elsewhere
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.blue[700],
      ),
      lightTheme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.blue[300],
      ),
      builder: (context, regularTheme, darkTheme, themeMode) {
        return MaterialApp(
          title: 'Chris Ishida Site',
          // theme: app_theme(), TODO: Take a second look at theme naming
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        );
      },
    );
  }
}
