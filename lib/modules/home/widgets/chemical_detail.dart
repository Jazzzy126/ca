import 'package:ca/core/extensions/context_extensions.dart';
import 'package:ca/core/extensions/radius_extensions.dart';
import 'package:ca/core/extensions/spacing_extensions.dart';
import 'package:ca/core/extensions/string_extensions.dart';
import 'package:ca/shared/widgets/z_pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../models/chemical_detail_model.dart';

class ChemicalDetail extends ConsumerStatefulWidget {
  const ChemicalDetail(this.chemicalDetailModel, {super.key});

  final ChemicalDetailModel chemicalDetailModel;

  @override
  ConsumerState createState() => _ChemicalDetailState();
}

class _ChemicalDetailState extends ConsumerState<ChemicalDetail>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
      length: widget.chemicalDetailModel.detail.length, vsync: this);

  final ScrollController _scrollController = ScrollController();

  late final List<Widget> _tabs = widget.chemicalDetailModel.detail
      .map((item) => Tab(text: item.title))
      .toList();

  late final List<GlobalKey> _itemKeys = List.generate(
    widget.chemicalDetailModel.detail.length,
    (_) => GlobalKey(),
  );

  bool _isTabClick = false; // 避免滚动触发时重复切换 Tab

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  /// 内容滚动监听
  void _onScroll() {
    if (_isTabClick) return; // 点击 TabBar 时不触发

    double minDistance = double.infinity;
    int currentIndex = _tabController.index;

    for (int i = 0; i < _itemKeys.length; i++) {
      final ctx = _itemKeys[i].currentContext;
      if (ctx == null) continue;

      final box = ctx.findRenderObject() as RenderBox;
      final pos =
          box.localToGlobal(Offset.zero, ancestor: context.findRenderObject());
      final distance = (pos.dy - kTextTabBarHeight).abs();

      if (distance < minDistance) {
        minDistance = distance;
        currentIndex = i;
      }
    }

    if (_tabController.index != currentIndex) {
      // 直接更新 index，避免 indicator 动画从头开始
      _tabController.index = currentIndex;
    }
  }

  /// 点击 TabBar 滚动到对应内容
  Future<void> _scrollToIndex(int index) async {
    final key = _itemKeys[index];
    final ctx = key.currentContext;
    if (ctx == null) return;

    final RenderBox box = ctx.findRenderObject() as RenderBox;

    final scrollCtx = _scrollController.position.context.storageContext;

    final Offset offset = box.localToGlobal(
      Offset.zero,
      ancestor: scrollCtx.findRenderObject(),
    );

    final double target =
        _scrollController.offset + offset.dy - kTextTabBarHeight;

    _isTabClick = true; // 标记点击滚动
    await _scrollController.animateTo(
      target,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _isTabClick = false;

    // 滚动完成后直接更新 TabController
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tabController.index = index;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverToBoxAdapter(
          child:
              _ChemicalDetailTop(summary: widget.chemicalDetailModel.summary),
        ),
        SliverStickyHeader(
          header: Container(
            color: context.theme.cardColor,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              splashBorderRadius: BorderRadius.vertical(
                top: Radius.circular(context.radius.md),
              ),
              tabs: _tabs,
              onTap: _scrollToIndex,
            ),
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: List.generate(
                widget.chemicalDetailModel.detail.length,
                (index) {
                  final item = widget.chemicalDetailModel.detail[index];
                  return Container(
                    key: _itemKeys[index],
                    padding: EdgeInsets.all(context.spacing.md),
                    child: _ChemicalDetailType(detail: item),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ChemicalDetailTop extends StatelessWidget {
  const _ChemicalDetailTop({required this.summary});

  final ChemicalDetailSummaryModel summary;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(context.radius.md),
              child: Image.network(
                summary.structImgUrl ?? '',
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
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        summary.name ?? '名称',
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('常用名：${summary.name.validate(value: '-')}'),
                      Text('英文名：${summary.enName.validate(value: '-')}'),
                    ],
                  ),
                ),
                const Divider(thickness: 0.5),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _DescriptionItem('CAS号', summary.cas),
                            _DescriptionItem('密度', summary.density),
                            _DescriptionItem('分子式', summary.molecularFormula),
                            _DescriptionItem('闪点', summary.flashPoint),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _DescriptionItem('分子量', summary.molecularWeight),
                            _DescriptionItem('沸点', summary.boilingPoint),
                            _DescriptionItem('熔点', summary.fusingPoint),
                            _DescriptionItem('信号词', summary.signalWord),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          spacing: context.spacing.md,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '符号：',
                              style: context.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            summary.symbols?.isEmpty != true
                                ? Expanded(
                                    child: GridView.count(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: context.spacing.sm,
                                      mainAxisSpacing: context.spacing.sm,
                                      children: summary.symbols
                                              ?.map(
                                                (item) => Image.asset(
                                                  'assets/images/symbol_image/$item.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                              .toList() ??
                                          [],
                                    ),
                                  )
                                : const Text('无'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DescriptionItem extends StatelessWidget {
  const _DescriptionItem(this.title, this.label);

  final String title;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
            text: '$title：',
          ),
          TextSpan(
            text: label.validate(value: '-'),
          ),
        ],
      ),
    );
  }
}

class _ChemicalDetailType extends StatelessWidget {
  const _ChemicalDetailType({required this.detail});

  final ChemicalDetailItemModel detail;

  @override
  Widget build(BuildContext context) {
    switch (detail.type) {
      case ChemicalDetailType.table:
        return _buildTable(detail, context);

      case ChemicalDetailType.richText:
        return _buildRichText(detail, context);

      case ChemicalDetailType.syntheticRoutes:
        return _buildSyntheticRoutes(detail);

      case ChemicalDetailType.sxy:
        return _buildSxy(detail);
    }
  }

  Widget _buildTable(ChemicalDetailItemModel detail, BuildContext context) {
    final table = detail.table;
    return table.when(
      stringList: (values) => Text('$values'),
      list: (List<ChemicalDetailItemTableModel> values) {
        return _BuildTable(title: detail.title, data: values);
      },
      string: (String data) => Text(data),
      onElse: (value) => Text('$value'),
    );
  }

  Widget _buildRichText(ChemicalDetailItemModel detail, BuildContext context) {
    final BorderSide borderSide = BorderSide(color: context.theme.dividerColor);
    final richText = detail.richText;
    final fontSize = context.textTheme.bodyMedium?.fontSize ?? 14;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: context.spacing.md * 2),
          height: context.spacing.md * 2.5 +
              (context.textTheme.titleMedium?.fontSize ?? 16),
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.1),
            border: Border.all(
              color: borderSide.color,
            ),
          ),
          alignment: Alignment.centerLeft,
          child: Text(
            detail.title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(context.spacing.md).add(
            EdgeInsets.only(left: context.spacing.md * 2),
          ),
          decoration: BoxDecoration(
            border: Border(
              left: borderSide,
              right: borderSide,
              bottom: borderSide,
            ),
          ),
          child: Html(
            data: richText,
            style: {
              'p': Style(fontSize: FontSize(fontSize)),
              'div': Style(fontSize: FontSize(fontSize)),
              'a': Style(color: context.colorScheme.primary),
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSyntheticRoutes(ChemicalDetailItemModel detail) {
    final List<ChemicalDetailSyntheticRoutes>? list = detail.syntheticRoutes;
    if (list == null || list.isEmpty) return const Text('无合成路线');
    return _BuildSyntheticRoutes(title: detail.title, data: list);
  }

  Widget _buildSxy(ChemicalDetailItemModel detail) {
    final ChemicalDetailSxy? chemicalDetailSxy = detail.sxy;

    if (chemicalDetailSxy == null) return const Text('无上下游');

    return _BuildSxy(title: detail.title, data: chemicalDetailSxy);
  }
}

class _BuildTable extends StatelessWidget {
  const _BuildTable({required this.title, required this.data});

  final String title;
  final List<ChemicalDetailItemTableModel> data;

  @override
  Widget build(BuildContext context) {
    final BorderSide borderSide = BorderSide(color: context.theme.dividerColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: context.spacing.md * 2),
          height: context.spacing.md * 2.5 +
              (context.textTheme.titleMedium?.fontSize ?? 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.1),
            border: Border.all(
              color: borderSide.color,
            ),
          ),
          child: Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ...List.generate(
          data.length,
          (index) {
            final item = data[index];

            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: borderSide,
                  left: borderSide,
                  right: borderSide,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 132,
                    padding: EdgeInsets.all(context.spacing.md).subtract(
                      EdgeInsets.only(left: context.spacing.md),
                    ),
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${item.key}',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(context.spacing.md),
                      decoration: BoxDecoration(
                        border: Border(left: borderSide),
                      ),
                      child: item.value.when(
                          string: (data) => Text(data),
                          stringList: (data) => Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                spacing: context.spacing.xs,
                                children: data.map((s) => Text(s)).toList(),
                              ),
                          onElse: (data) => Text(data)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _BuildSxy extends StatelessWidget {
  const _BuildSxy({required this.title, required this.data});

  final String title;
  final ChemicalDetailSxy data;

  @override
  Widget build(BuildContext context) {
    final BorderSide borderSide = BorderSide(color: context.theme.dividerColor);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: context.spacing.md * 2),
          height: context.spacing.md * 2.5 +
              (context.textTheme.titleMedium?.fontSize ?? 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.1),
            border: Border.all(
              color: borderSide.color,
            ),
          ),
          child: Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        _BuildSxyItem(
          title: '上游',
          data: data.sy,
        ),
        _BuildSxyItem(
          title: '下游',
          data: data.xy,
        ),
      ],
    );
  }
}

class _BuildSxyItem extends StatefulWidget {
  const _BuildSxyItem({required this.title, required this.data});

  final String title;
  final List<Sxy> data;

  @override
  State<_BuildSxyItem> createState() => _BuildSxyItemState();
}

class _BuildSxyItemState extends State<_BuildSxyItem> {
  int current = 1;
  int pageSize = 6;

  Widget buildItemCard(Sxy item, BorderSide borderSide) {
    return Container(
      padding: EdgeInsets.all(context.spacing.sm),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainer,
        border: Border.all(color: borderSide.color),
        borderRadius: BorderRadiusGeometry.circular(context.radius.sm),
      ),
      child: Column(
        spacing: context.spacing.sm,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(context.radius.xs),
              child: Image.network(
                item.img ?? '',
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
          Text(
            item.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(item.cas),
        ],
      ),
    );
  }

  List<Sxy> getPageData(List<Sxy> list) {
    final int start = (current - 1) * pageSize;
    final int end = start + pageSize;
    if (start >= list.length) return [];
    return list.sublist(start, end > list.length ? list.length : end);
  }

  @override
  Widget build(BuildContext context) {
    final BorderSide borderSide = BorderSide(color: context.theme.dividerColor);
    final List<Sxy> pageData = getPageData(widget.data);

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: context.spacing.md * 2),
          height: context.spacing.md * 2.5 +
              (context.textTheme.titleMedium?.fontSize ?? 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.05),
            border: Border(
              left: borderSide,
              right: borderSide,
              bottom: borderSide,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (widget.data.length > pageSize)
                SizedBox(
                  width: 320,
                  child: ZPagination(
                    current: current,
                    size: pageSize,
                    total: widget.data.length,
                    onPageChanged: (int value) {
                      setState(() {
                        current = value;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(context.spacing.md),
          decoration: BoxDecoration(
            border:
                Border(left: borderSide, right: borderSide, bottom: borderSide),
          ),
          child: GridView.count(
            crossAxisCount: pageSize,
            crossAxisSpacing: context.spacing.md,
            mainAxisSpacing: context.spacing.md,
            childAspectRatio: 0.8,
            shrinkWrap: true,
            children: pageData.map(
              (item) {
                return buildItemCard(item, borderSide);
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}

class _BuildSyntheticRoutes extends StatefulWidget {
  const _BuildSyntheticRoutes({
    required this.title,
    required this.data,
  });

  final String title;
  final List<ChemicalDetailSyntheticRoutes> data;

  @override
  State<_BuildSyntheticRoutes> createState() => _BuildSyntheticRoutesState();
}

class _BuildSyntheticRoutesState extends State<_BuildSyntheticRoutes> {
  int current = 1;
  int pageSize = 3;

  Widget buildItemCard(List<SyntheticRoutesItem>? list, BorderSide borderSide) {
    if (list == null || list.isEmpty) return const Center(child: Text('空'));

    return Container(
      padding: EdgeInsets.all(context.spacing.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.radius.md),
        color: context.colorScheme.surfaceContainer,
      ),
      child: Column(
        spacing: context.spacing.md,
        children: [
          Row(
            spacing: context.spacing.md,
            children: list.map((item) {
              return Expanded(
                  child: Column(
                spacing: context.spacing.xs,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.radius.sm),
                    child: Image.network(
                      item.img ?? '',
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
                  Text('${item.name}'),
                  Text('${item.cas}'),
                ],
              ));
            }).toList(),
          ),
        ],
      ),
    );
  }

  List<ChemicalDetailSyntheticRoutes> getPageData(
      List<ChemicalDetailSyntheticRoutes> list) {
    final int start = (current - 1) * pageSize;
    final int end = start + pageSize;
    if (start >= list.length) return [];
    return list.sublist(start, end > list.length ? list.length : end);
  }

  @override
  Widget build(BuildContext context) {
    final BorderSide borderSide = BorderSide(color: context.theme.dividerColor);
    final List<ChemicalDetailSyntheticRoutes> pageData =
        getPageData(widget.data);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: context.spacing.md * 2),
          height: context.spacing.md * 2.5 +
              (context.textTheme.titleMedium?.fontSize ?? 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.1),
            border: Border.all(
              color: borderSide.color,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (widget.data.length > pageSize)
                SizedBox(
                  width: 320,
                  child: ZPagination(
                    current: current,
                    size: pageSize,
                    total: widget.data.length,
                    onPageChanged: (int value) {
                      setState(() {
                        current = value;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(context.spacing.md),
          decoration:
              BoxDecoration(border: Border.all(color: borderSide.color)),
          child: Column(
            spacing: context.spacing.md,
            children: pageData.map(
              (ChemicalDetailSyntheticRoutes item) {
                final productivityStr = item.productivity == null
                    ? '~%'
                    : '${(item.productivity! * 100).ceil()}%';

                return Row(
                  spacing: context.spacing.xl,
                  children: [
                    Expanded(child: buildItemCard(item.materials, borderSide)),
                    Column(
                      children: [
                        Text(productivityStr),
                        SvgPicture.asset(
                          'assets/svgs/arrow_right.svg',
                          width: 80,
                        ),
                      ],
                    ),
                    Expanded(child: buildItemCard(item.products, borderSide)),
                  ],
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
