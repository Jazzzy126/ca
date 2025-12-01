import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'app_router_guards.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: BodyRoute.page,
          children: [
            AutoRoute(initial: true, page: HomeRoute.page),
            AutoRoute(page: MessageRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ProfileSettingRoute.page, fullscreenDialog: true),
      ];

  @override
  List<AutoRouteGuard> get guards => appRouterGuards;
}
