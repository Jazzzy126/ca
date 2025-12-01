import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/radius_extensions.dart';
import '../../../../core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../models/chemical_auto_complete_model.dart';
import '../models/params/chemical_search_params.dart';
import '../services/chemical_service.dart';

enum _FormKeys {
  @JsonValue('content')
  content,
  @JsonValue('a1')
  a1,
  @JsonValue('a2')
  a2,
  @JsonValue('b1')
  b1,
  @JsonValue('b2')
  b2,
  @JsonValue('c1')
  c1,
  @JsonValue('c2')
  c2,
  @JsonValue('d1')
  d1,
  @JsonValue('d2')
  d2,
  @JsonValue('e1')
  e1,
  @JsonValue('e2')
  e2,
}

class HomeSearchArea extends ConsumerStatefulWidget {
  const HomeSearchArea({super.key, required this.onSearch});

  final ValueChanged<ChemicalSearchParams> onSearch;

  @override
  ConsumerState createState() => _HomeSearchAreaState();
}

class _HomeSearchAreaState extends ConsumerState<HomeSearchArea> {
  final _formKey = GlobalKey<FormBuilderState>();

  bool _showFilter = false;

  void onSearch() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final values = _formKey.currentState!.value;

      String safeValue(Map<String, dynamic> values, String key) {
        return values[key]?.toString() ?? '';
      }

      String rangeValue(Map<String, dynamic> values, String key1, String key2) {
        return '${safeValue(values, key1)}~${safeValue(values, key2)}';
      }

      final params = ChemicalSearchParams(
        content: values[_FormKeys.content.name],
        molecularWeight:
            rangeValue(values, _FormKeys.a1.name, _FormKeys.a2.name),
        density: rangeValue(values, _FormKeys.b1.name, _FormKeys.b2.name),
        fusionPoint: rangeValue(values, _FormKeys.c1.name, _FormKeys.c2.name),
        boilingPoint: rangeValue(values, _FormKeys.d1.name, _FormKeys.d2.name),
        flashPoint: rangeValue(values, _FormKeys.e1.name, _FormKeys.e2.name),
      );

      widget.onSearch(params);

      // 清空表单
      // _formKey.currentState?.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    int crossAxisCellCount = 6;
    switch (deviceType) {
      case DeviceScreenType.desktop:
        crossAxisCellCount = 6;
      case DeviceScreenType.tablet:
        crossAxisCellCount = 15;
      case DeviceScreenType.mobile:
        crossAxisCellCount = 30;
      default:
        crossAxisCellCount = 6;
    }

    return Card(
      child: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(context.spacing.md),
          child: StaggeredGrid.count(
            crossAxisCount: 30,
            mainAxisSpacing: context.spacing.md,
            crossAxisSpacing: context.spacing.md,
            children: [
              StaggeredGridTile.fit(
                crossAxisCellCount: 30,
                child: Row(
                  spacing: context.spacing.md,
                  children: [
                    const Text('产品搜索'),
                    _HomeSearchAnchor(
                      name: _FormKeys.content.name,
                    ),
                    ...[
                      FilledButton.icon(
                        onPressed: () => onSearch(),
                        icon: const Icon(Icons.search),
                        label: const Text('查询'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            _showFilter = !_showFilter;
                          });
                        },
                        icon: const Icon(Icons.keyboard_arrow_right),
                        label: const Text('高级筛选'),
                        iconAlignment: IconAlignment.end,
                      ),
                    ]
                  ],
                ),
              ),
              if (_showFilter) ...[
                StaggeredGridTile.fit(
                  crossAxisCellCount: crossAxisCellCount,
                  child: _MinMaxItem(
                    label: '熔点',
                    minName: _FormKeys.a1.name,
                    maxName: _FormKeys.a2.name,
                  ),
                ),
                StaggeredGridTile.fit(
                  crossAxisCellCount: crossAxisCellCount,
                  child: _MinMaxItem(
                    label: '沸点',
                    minName: _FormKeys.b1.name,
                    maxName: _FormKeys.b2.name,
                  ),
                ),
                StaggeredGridTile.fit(
                  crossAxisCellCount: crossAxisCellCount,
                  child: _MinMaxItem(
                    label: '密度',
                    minName: _FormKeys.c1.name,
                    maxName: _FormKeys.c2.name,
                  ),
                ),
                StaggeredGridTile.fit(
                  crossAxisCellCount: crossAxisCellCount,
                  child: _MinMaxItem(
                    label: '闪点',
                    minName: _FormKeys.d1.name,
                    maxName: _FormKeys.d2.name,
                  ),
                ),
                StaggeredGridTile.fit(
                  crossAxisCellCount: crossAxisCellCount,
                  child: _MinMaxItem(
                    label: 'PH值',
                    minName: _FormKeys.e1.name,
                    maxName: _FormKeys.e2.name,
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeSearchAnchor extends ConsumerStatefulWidget {
  const _HomeSearchAnchor({
    required this.name,
  });

  final String name;

  @override
  ConsumerState createState() => _HomeSearchAnchorState();
}

class _HomeSearchAnchorState extends ConsumerState<_HomeSearchAnchor> {
  TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TypeAheadField<ChemicalAutoCompleteModel>(
        suggestionsCallback: (search) async {
          return search.isNotEmpty
              ? await chemicalService.autoComplete(search, 10)
              : [];
        },
        itemBuilder: (context, item) {
          return ListTile(
            title: Text(item.content),
          );
        },
        builder: (context, controller, focusNode) {
          return Container(
            padding: EdgeInsets.symmetric(
              vertical: context.spacing.sm,
              horizontal: context.spacing.md,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(context.radius.md),
            ),
            child: FormBuilderTextField(
              name: widget.name,
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: '请输入产品名称、CAS号',
                hintStyle: context.textTheme.labelLarge,
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          );
        },
        hideOnEmpty: true,
        constraints: BoxConstraints(maxHeight: context.sh * 0.5),
        onSelected: (result) {
          _textController.text = result.content;

          // 把光标移动到末尾，而不是全选
          _textController.selection = TextSelection.fromPosition(
            TextPosition(offset: _textController.text.length),
          );
        },
      ),
    );
    // return Expanded(
    //   child: Container(
    //     padding: EdgeInsets.symmetric(
    //       vertical: context.spacing.sm,
    //       horizontal: context.spacing.md,
    //     ),
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //         color: context.colorScheme.outline,
    //       ),
    //       borderRadius: BorderRadius.circular(context.radius.md),
    //     ),
    //     child: SearchField<ChemicalAutoCompleteModel>(
    //       controller: widget.textEditingController,
    //       suggestions: suggestions,
    //       selectedValue: selectedValue,
    //       onSuggestionTap:
    //           (SearchFieldListItem<ChemicalAutoCompleteModel> item) {
    //         setState(() {
    //           selectedValue = item;
    //         });
    //       },
    //       onSearchTextChanged: (searchText) {
    //         fetch(searchText);
    //         return suggestions;
    //       },
    //       searchInputDecoration: SearchInputDecoration(
    //           hintText: '请输入产品名称、CAS号',
    //           hintStyle: context.textTheme.labelLarge,
    //           border: InputBorder.none,
    //           isDense: true),
    //       marginColor: context.theme.dividerColor,
    //       suggestionsDecoration: SuggestionDecoration(
    //         color: context.theme.cardColor,
    //         borderRadius: BorderRadius.all(Radius.circular(context.radius.md)),
    //         elevation: 8,
    //       ),
    //     ),
    //   ),
    // );
  }
}

class _MinMaxItem extends StatelessWidget {
  const _MinMaxItem({
    required this.label,
    required this.minName,
    required this.maxName,
  });

  final String label;
  final String minName;
  final String maxName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(label, textAlign: TextAlign.center),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: context.spacing.sm,
              horizontal: context.spacing.md,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(context.radius.md),
            ),
            child: Row(
              children: [
                Expanded(
                  child: FormBuilderTextField(
                    name: minName,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: context.textTheme.labelLarge,
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: '最小值',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('至'),
                ),
                Expanded(
                  child: FormBuilderTextField(
                    name: maxName,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: context.textTheme.labelLarge,
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: '最大值',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
