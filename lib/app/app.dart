import 'package:chris_ishida_site/core/services/shared_preferences_service.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/nav_container_view.dart';
import 'package:stacked/stacked.dart';
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
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
          opaque: true,
          maintainState: true,
        ),
        // CustomRoute(
        //   page: AlbumsContainerView,
        //   transitionsBuilder: TransitionsBuilders.fadeIn,
        //   durationInMilliseconds: 0,
        //   reverseDurationInMilliseconds: 0,
        //   opaque: true,
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
