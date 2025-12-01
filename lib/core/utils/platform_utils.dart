import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

class PlatformUtils {
  /// 是否 Web
  static bool get isWeb => kIsWeb;

  /// 是否 Android
  static bool get isAndroid => !kIsWeb && Platform.isAndroid;

  /// 是否 iOS
  static bool get isIOS => !kIsWeb && Platform.isIOS;

  /// 是否 macOS
  static bool get isMacOS => !kIsWeb && Platform.isMacOS;

  /// 是否 Windows
  static bool get isWindows => !kIsWeb && Platform.isWindows;

  /// 是否 Linux
  static bool get isLinux => !kIsWeb && Platform.isLinux;

  /// 是否移动端（Android/iOS）
  static bool get isMobile => isAndroid || isIOS;

  /// 是否桌面端（macOS/Windows/Linux）
  static bool get isDesktop => isMacOS || isWindows || isLinux;
}
