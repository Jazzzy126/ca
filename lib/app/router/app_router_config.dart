import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

final Map<String, String> appRouterTitle = {
  BodyRoute.name: '主页',
  HomeRoute.name: '首页',
  MessageRoute.name: '消息',
  ProfileRoute.name: '我的',
  LoginRoute.name: '登陆',
  ProfileSettingRoute.name: '资料设置',
};

extension RouteTitleExtension on BuildContext {
  String get routeTitle => appRouterTitle[routeData.name] ?? '未命名';
}
