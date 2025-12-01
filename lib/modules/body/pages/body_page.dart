import 'package:auto_route/auto_route.dart';
import 'package:ca/app/router/app_router.gr.dart';
import 'package:ca/app/router/app_router_config.dart';
import 'package:ca/core/extensions/context_extensions.dart';
import 'package:ca/core/extensions/spacing_extensions.dart';
import 'package:ca/core/utils/platform_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/body_action.dart';

class NavigationItem {
  const NavigationItem(
      {required this.route,
      required this.icon,
      required this.show,
      this.label});

  final PageRouteInfo route;
  final IconData icon;
  final bool show;
  final String? label;
}

@RoutePage()
class BodyScreen extends ConsumerStatefulWidget {
  const BodyScreen({super.key});

  @override
  ConsumerState createState() => _BodyScreenState();
}

class _BodyScreenState extends ConsumerState<BodyScreen> {
  static final List<NavigationItem> _navigationItems = [
    NavigationItem(
      route: const HomeRoute(),
      icon: Icons.home,
      label: appRouterTitle[HomeRoute.name],
      show: !PlatformUtils.isMobile,
    ),
    NavigationItem(
      route: const MessageRoute(),
      icon: Icons.message,
      label: appRouterTitle[MessageRoute.name],
      show: PlatformUtils.isMobile,
    ),
    NavigationItem(
      route: const ProfileRoute(),
      icon: Icons.person,
      label: appRouterTitle[ProfileRoute.name],
      show: PlatformUtils.isMobile,
    ),
  ];

  List<BottomNavigationBarItem> get _bottomNavigationBarItems =>
      _navigationItems.where((item) => item.show).map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.label ?? '未定义',
        );
      }).toList();

  List<PageRouteInfo> get _routes =>
      _navigationItems.where((item) => item.show).map((e) => e.route).toList();

  List<IconData> get _icons => _navigationItems
      .where((item) => item.show)
      .map((item) => item.icon)
      .toList();

  List<NavigationRailDestination> get _destinations =>
      _navigationItems.where((item) => item.show).map((item) {
        return NavigationRailDestination(
          icon: Icon(item.icon),
          label: Text(item.label ?? '未定义'),
        );
      }).toList();

  bool _extended = true;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
                sizingInformation.deviceScreenType == DeviceScreenType.watch) {
              return Scaffold(
                body: child,
                bottomNavigationBar: BottomNavigationBar(
                  items: _bottomNavigationBarItems,
                  onTap: tabsRouter.setActiveIndex,
                ),
              );
            }

            return Scaffold(
              appBar: AppBar(
                centerTitle: false,
                titleTextStyle: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.onPrimary),
                title: const Text('康验化学助手'),
                backgroundColor: context.colorScheme.primary,
                actions: const [BodyAction()],
              ),
              body: Row(
                children: [
                  NavigationRail(
                    extended: _extended,
                    selectedIndex: tabsRouter.activeIndex,
                    unselectedLabelTextStyle: context.textTheme.bodyMedium,
                    selectedLabelTextStyle:
                        context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                    onDestinationSelected: (index) {
                      tabsRouter.setActiveIndex(index);
                    },
                    destinations: _destinations,
                    // leading: const Text('logo、标题'),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(context.spacing.sm),
                      onTap: () {
                        setState(() {
                          _extended = !_extended;
                        });
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 40,
                        child: Icon(Icons.menu),
                      ),
                    ),
                    minWidth: 80,
                    trailingAtBottom: true,
                  ),
                  Expanded(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: child,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
