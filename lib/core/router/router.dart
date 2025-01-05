import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:pas_app/features/home/presentation/pages/home.dart';
import 'package:pas_app/features/splash/presentation/pages/splash.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Page|Screen|Tab|Sheet|Item,Route",
)
@LazySingleton()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          // initial: true,
          path: '/splash',
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: '/home',
        ),
      ];
}
