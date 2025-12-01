import 'package:flutter/material.dart';

import 'theme_extensions/app_spacing.dart';

extension SpacingExtensions on BuildContext {
  AppSpacing get spacing =>
      Theme.of(this).extension<AppSpacing>()!;
}
