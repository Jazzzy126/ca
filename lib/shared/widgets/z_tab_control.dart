import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import '../../core/extensions/context_extensions.dart';
import '../../core/extensions/radius_extensions.dart';
import '../../core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';

class ZTabControl extends StatelessWidget {
  const ZTabControl({super.key, required this.tabs, this.controller});

  /// Selection options.
  final List<SegmentTab> tabs;

  /// Can be provided by [DefaultTabController].
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return SegmentedTabControl(
      tabs: tabs,
      indicatorPadding: EdgeInsets.all(context.spacing.xs),
      controller: controller,
      textStyle: context.textTheme.bodyMedium,
      tabTextColor: context.colorScheme.onSurface,
      selectedTextStyle: context.textTheme.bodyLarge,
      selectedTabTextColor: context.colorScheme.primary,
      barDecoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(context.radius.xl),
      ),
      indicatorDecoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(context.radius.xl - 4),
      ),
      splashHighlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    );
  }
}
