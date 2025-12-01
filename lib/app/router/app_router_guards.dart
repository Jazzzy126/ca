import 'package:auto_route/auto_route.dart';

import '../../core/network/refresh/refresh_token.dart';
import 'app_router.gr.dart';

/// 路由白名单（无需登录即可访问）
final _routeWhiteList = {
  LoginRoute.name,
};

final List<AutoRouteGuard> appRouterGuards = [repeatGuard, authGuard];

/// 检查是否为重复跳转（目标路由与当前路由相同）
bool _isDuplicateNavigation(String targetRoute, String currentRoute) =>
    targetRoute == currentRoute;

final AutoRouteGuard repeatGuard = AutoRouteGuard.simple((
  resolver,
  router,
) async {
  final targetRoute = resolver.routeName;
  final currentRoute = router.current.name;

  if (_isDuplicateNavigation(targetRoute, currentRoute)) {
    resolver.next(false);
  }

  resolver.next();
});


/// 认证路由拦截
final AutoRouteGuard authGuard = AutoRouteGuard.simple((
  resolver,
  router,
) async {
  final token = await RefreshToken.getToken();
  final bool isLogin = token != null;

  final targetRoute = resolver.routeName;

  // 已登录用户尝试访问登录页，重定向到首页
  if (isLogin && targetRoute == LoginRoute.name) {
    print('已登录用户尝试访问登录页，重定向到首页');
    return resolver.redirectUntil(const BodyRoute());
  }

  // 未登录用户：检查白名单
  if (!isLogin && !_routeWhiteList.contains(targetRoute)) {
    return resolver.redirectUntil(const LoginRoute());
  }

  resolver.next();
});
