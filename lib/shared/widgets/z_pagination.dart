import 'package:ca/core/extensions/context_extensions.dart';
import 'package:ca/core/extensions/radius_extensions.dart';
import 'package:ca/core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';

class ZPagination extends StatelessWidget {
  const ZPagination({
    super.key,
    required this.current,
    required this.size,
    required this.total,
    required this.onPageChanged,
    this.buttonSize = const Size(32, 32),
  });

  final int current;
  final num size;
  final num total;
  final Function(int) onPageChanged;
  final Size buttonSize;

  @override
  Widget build(BuildContext context) {
    return NumberPagination(
      onPageChanged: onPageChanged,
      visiblePagesCount: 4,
      fontSize: context.textTheme.bodySmall!.fontSize!,
      totalPages: (total / size).ceil(),
      currentPage: current,
      controlButtonSize: buttonSize,
      numberButtonSize: buttonSize,
      buttonRadius: context.radius.md,
      sectionSpacing: context.spacing.sm,
      navigationButtonSpacing: context.spacing.xs,
      betweenNumberButtonSpacing: context.radius.xs,
      selectedButtonColor: context.colorScheme.primary,
      selectedNumberColor: context.colorScheme.onPrimary,
      unSelectedButtonColor: context.colorScheme.surface,
      unSelectedNumberColor: context.colorScheme.onSurface,
      controlButtonColor: context.colorScheme.surface,
      buttonElevation: 0,
    );
  }
}
