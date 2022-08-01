import 'package:chris_ishida_site/core/services/shared_preferences_service.dart';
import 'package:chris_ishida_site/presentation/views/contact/contact_view.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      initial: true,
    ),
    MaterialRoute(page: ContactView),
  ],
  dependencies: [
    Singleton(
      classType: NavigationService,
    ),
    Presolve(
      classType: SharedPreferencesService,
      presolveUsing: SharedPreferencesService.getInstance,
    ),
  ],
  logger: StackedLogger(),
)
class App {
  //empty class, will be filled after code generation
}
