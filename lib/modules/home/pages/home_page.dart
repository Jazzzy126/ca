import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/extensions/radius_extensions.dart';
import '../../../../core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/chemical_search_model.dart';
import '../providers/chemical_detail_notifier.dart';
import '../providers/chemical_search_notifier.dart';
import '../widgets/chemical_detail.dart';
import '../widgets/chemical_empty.dart';
import '../widgets/chemical_list.dart';
import '../widgets/home_search_area.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chemicalSearchNotifier = ref.read(chemicalSearchProvider.notifier);
    final chemicalDetailNotifier = ref.read(chemicalDetailProvider.notifier);
    final chemicalDetailAsync = ref.watch(chemicalDetailProvider);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(context.spacing.md),
        child: Column(
          spacing: context.spacing.md,
          children: [
            HomeSearchArea(
              onSearch: chemicalSearchNotifier.search,
            ),
            Expanded(
              child: Row(
                spacing: context.spacing.md,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 400,
                    child: Card(
                      child: ChemicalList(
                        onTap: (ChemicalSearchRowModel result) {
                          chemicalDetailNotifier.fetch(result);
                        },
                        onPageChanged: (int current) {
                          chemicalSearchNotifier.pagination(current);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: chemicalDetailAsync.when(
                        data: (data) {
                          if (data == null) return const ChemicalEmpty();
                          return ChemicalDetail(data);
                        },
                        error: (Object error, StackTrace stackTrace) {
                          return Text('$error');
                        },
                        loading: () {
                          return _buildLoading(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildLoading(BuildContext context) {
  return Skeletonizer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(context.spacing.md),
            height: getValueForScreenType(
              context: context,
              mobile: 240,
              tablet: 240,
              desktop: 280,
            ),
            child: Row(
              spacing: context.spacing.md,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Bone.square(
                    borderRadius: BorderRadius.circular(context.radius.md),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Bone.text(),
                      Bone.text(),
                      Bone.text(),
                      Divider(thickness: 0.5),
                      Bone.text(
                        words: 5,
                      ),
                      Bone.text(
                        words: 4,
                      ),
                      Bone.text(
                        words: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
