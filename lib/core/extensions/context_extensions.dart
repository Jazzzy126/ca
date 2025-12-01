import 'package:flutter/material.dart';

import '../utils/platform_utils.dart';

extension ContextExtensions on BuildContext {
  // 📏 屏幕信息
  Size get size => MediaQuery.of(this).size;

  double get sw => MediaQuery.of(this).size.width;

  double get sh => MediaQuery.of(this).size.height;

  double get statusBarHeight => MediaQuery.of(this).padding.top;

  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;

  // 🌙 主题与亮度
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // 🧭 控制器
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  ScaffoldState get scaffold => Scaffold.of(this);

  NavigatorState get navigator => Navigator.of(this);

  // 🧱 安全区
  double get safeAreaVertical => MediaQuery.of(this).padding.vertical;

  double get safeAreaHorizontal => MediaQuery.of(this).padding.horizontal;

  // 💻 平台判断（使用工具类）
  bool get isWeb => PlatformUtils.isWeb;

  bool get isAndroid => PlatformUtils.isAndroid;

  bool get isIOS => PlatformUtils.isIOS;

  bool get isMacOS => PlatformUtils.isMacOS;

  bool get isWindows => PlatformUtils.isWindows;

  bool get isLinux => PlatformUtils.isLinux;

  // 📱 响应式布局
  bool get isMobile => sw < 600;

  bool get isTablet => sw >= 600 && sw < 1024;

  bool get isDesktop => sw >= 1024;
}
