import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:pas_app/core/widgets/custom_pages/custom_modal.dart';
import 'package:pas_app/features/authentication/presentation/pages/reset_password/reset_password_success.dart';
import 'package:pas_app/features/home/presentation/pages/home_tabs.imports.dart';
import 'package:pas_app/features/splash/presentation/pages/splash.dart';

import '../../features/authentication/presentation/pages/authentication.imports.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Page|Screen|Sheet|Item,Route",
)
@LazySingleton()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
        AutoRoute(
          page: IntroRoute.page,
          path: '/into',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: OtpRoute.page,
          path: '/otp',
        ),
        AutoRoute(
          page: HomeTabsRoute.page,
          initial: true,
          path: "/home_tabs",
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: "home",
            ),
            AutoRoute(
              page: TasksRoute.page,
              path: "tasks",
            ),
            AutoRoute(
              page: RequestsRoute.page,
              path: "requests",
            ),
            AutoRoute(
              page: AttendanceRoute.page,
              path: "attendance",
            ),
          ],
        ),
        CustomRoute(
          page: CustomModalRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 300,
          opaque: false,
        ),
      ];
}


