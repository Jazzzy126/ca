import 'package:flutter/material.dart';

import 'theme_extensions/app_radius.dart';

extension RadiusExtensions on BuildContext {
  AppRadius get radius =>
      Theme.of(this).extension<AppRadius>() ?? AppRadius.global;
}
