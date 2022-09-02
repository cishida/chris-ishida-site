import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/services/shared_preferences_service.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/nav_container_view.dart';
import 'package:chris_ishida_site/presentation/views/product/product_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: NavContainerView,
      initial: true,
      maintainState: true,
      children: [
        CustomRoute(
          page: HomeView,
          initial: true,
          transitionsBuilder: Transitions.defaultNav,
          durationInMilliseconds: Durations.defaultTransitionMillis,
          reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
          opaque: false,
          maintainState: true,
        ),
        // CustomRoute(
        //   page: AboutView,
        //   transitionsBuilder: Transitions.defaultNav,
        //   durationInMilliseconds: Durations.defaultTransitionMillis,
        //   reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
        //   opaque: false,
        //   maintainState: true,
        // ),
        // CustomRoute(
        //   page: ProductsView,
        //   transitionsBuilder: Transitions.defaultNav,
        //   durationInMilliseconds: Durations.defaultTransitionMillis,
        //   reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
        //   opaque: false,
        //   maintainState: true,
        // ),
        // CustomRoute(
        //   page: ContactView,
        //   transitionsBuilder: Transitions.defaultNav,
        //   durationInMilliseconds: Durations.defaultTransitionMillis,
        //   reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
        //   opaque: false,
        //   maintainState: true,
        // ),
        CustomRoute(
          page: ProductView,
          transitionsBuilder: Transitions.defaultNav,
          durationInMilliseconds: Durations.defaultTransitionMillis,
          reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
          opaque: false,
          maintainState: true,
          // initial: true,
        ),
        // CustomRoute(
        //   page: AlbumsContainerView,
        //   transitionsBuilder: Transitions.defaultNav,
        //   durationInMilliseconds: Durations.defaultTransitionMillis,
        //   reverseDurationInMilliseconds: Durations.defaultTransitionMillis,
        //   opaque: false,
        //   maintainState: true,
        //   children: [
        //     MaterialRoute(
        //       page: AlbumsView,
        //       initial: true,
        //       maintainState: true,
        //     ),
        //     MaterialRoute(
        //       page: AlbumView,
        //       maintainState: true,
        //     ),
        //   ],
        // ),
      ],
    ),
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
