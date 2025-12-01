import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import '../extensions/theme_extensions/app_radius.dart';
import '../extensions/theme_extensions/app_spacing.dart';

class AppTheme {
  static ThemeData light =
      FlexThemeData.light(scheme: FlexScheme.shadBlue).copyWith(
    cardTheme: CardThemeData(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.global.md,
        ),
      ),
    ),
    extensions: const [
      AppSpacing(),
      AppRadius(),
    ],
  );

  static ThemeData dark =
      FlexThemeData.dark(scheme: FlexScheme.sanJuanBlue).copyWith(
    cardTheme: CardThemeData(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.global.md,
        ),
      ),
    ),
    extensions: const [
      AppSpacing(),
      AppRadius(),
    ],
  );
}
