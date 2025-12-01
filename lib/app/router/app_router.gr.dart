// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:ca/modules/auth/pages/login_page.dart' as _i3;
import 'package:ca/modules/body/pages/body_page.dart' as _i1;
import 'package:ca/modules/home/pages/home_page.dart' as _i2;
import 'package:ca/modules/message/pages/message_page.dart' as _i4;
import 'package:ca/modules/profile/pages/profile_page.dart' as _i5;
import 'package:ca/modules/profile/pages/profile_setting_page.dart' as _i6;

/// generated route for
/// [_i1.BodyScreen]
class BodyRoute extends _i7.PageRouteInfo<void> {
  const BodyRoute({List<_i7.PageRouteInfo>? children})
      : super(BodyRoute.name, initialChildren: children);

  static const String name = 'BodyRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.BodyScreen();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginPage();
    },
  );
}

/// generated route for
/// [_i4.MessagePage]
class MessageRoute extends _i7.PageRouteInfo<void> {
  const MessageRoute({List<_i7.PageRouteInfo>? children})
      : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.MessagePage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.ProfileSettingPage]
class ProfileSettingRoute extends _i7.PageRouteInfo<void> {
  const ProfileSettingRoute({List<_i7.PageRouteInfo>? children})
      : super(ProfileSettingRoute.name, initialChildren: children);

  static const String name = 'ProfileSettingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileSettingPage();
    },
  );
}
