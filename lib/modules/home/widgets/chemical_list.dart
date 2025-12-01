import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/radius_extensions.dart';
import '../../../../core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../shared/widgets/z_pagination.dart';
import '../models/chemical_search_model.dart';
import '../providers/chemical_detail_notifier.dart';
import '../providers/chemical_search_notifier.dart';
import 'chemical_empty.dart';

class ChemicalList extends ConsumerWidget {
  const ChemicalList({
    super.key,
    required this.onPageChanged,
    required this.onTap,
  });

  final Function(int) onPageChanged;
  final Function(ChemicalSearchRowModel) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chemicalSearchAsync = ref.watch(chemicalSearchProvider);
    final chemicalDetailAsync = ref.watch(chemicalDetailProvider);

    return chemicalSearchAsync.when(
      data: (data) {
        if (data == null || data.rows.isEmpty == true) {
          return const ChemicalEmpty();
        }

        final rows = data.rows;

        return Column(
          children: [
            Expanded(
              child: _buildList(
                context: context,
                itemBuilder: (context, index) {
                  final ChemicalSearchRowModel item = rows[index];
                  return Material(
                    borderRadius: BorderRadius.circular(context.radius.md),
                    color: chemicalDetailAsync.maybeWhen(
                      data: (data) => data?.id == item.id
                          ? context.colorScheme.primary.withValues(alpha: 0.2)
                          : Colors.transparent,
                      orElse: () => Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: () => onTap(item),
                      borderRadius: BorderRadius.circular(context.radius.md),
                      hoverColor:
                          context.colorScheme.primary.withValues(alpha: 0.05),
                      splashColor:
                          context.colorScheme.primary.withValues(alpha: 0.1),
                      highlightColor:
                          context.colorScheme.primary.withValues(alpha: 0.1),
                      child: _buildChemicalItem(context: context, item: item),
                    ),
                  );
                },
                itemCount: rows.length,
              ),
            ),
            Container(
              padding: EdgeInsets.all(context.spacing.sm),
              child: ZPagination(
                current: data.current,
                size: data.size,
                total: data.total,
                onPageChanged: onPageChanged,
              ),
            ),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text('$error');
      },
      loading: () => _buildLoading(context),
    );
  }
}

Widget _buildList({
  required BuildContext context,
  required NullableIndexedWidgetBuilder itemBuilder,
  required int itemCount,
}) {
  return ListView.separated(
    padding: EdgeInsets.all(context.spacing.sm),
    itemBuilder: itemBuilder,
    separatorBuilder: (_, __) => Divider(height: context.spacing.sm),
    itemCount: itemCount,
  );
}

Widget _buildChemicalItem({
  required BuildContext context,
  required ChemicalSearchRowModel item,
}) {
  return Padding(
    padding: EdgeInsets.all(context.spacing.sm),
    child: Row(
      spacing: context.spacing.md,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(context.radius.md),
            child: Image.network(
              item.structImgUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 50,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ),
        Expanded(
          child: DefaultTextStyle(
            style: context.textTheme.labelMedium!,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: context.spacing.xs,
              children: [
                Text('中文名称：${item.name}'),
                Text('英文名称：${item.enName}'),
                Text('CAS：${item.cas}'),
                Text('ME：${item.molecularFormula}'),
                Text('MW：${item.molecularWeight}'),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildLoading(BuildContext context) {
  return Skeletonizer(
    child: _buildList(
      context: context,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(context.spacing.sm),
          child: Row(
            spacing: context.spacing.md,
            children: [
              Bone.square(
                size: 100,
                borderRadius: BorderRadius.circular(context.radius.md),
              ),
              const Expanded(
                child: Bone.multiText(
                  lines: 4,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
