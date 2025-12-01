import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ca/app/router/app_router_config.dart';

import '../../auth/providers/auth_info_notifier.dart';

@RoutePage()
class ProfileSettingPage extends ConsumerWidget {
  const ProfileSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authInfoAsync = ref.watch(authInfoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.routeTitle),
      ),
      body: authInfoAsync.when(
        data: (data) {
          if (data == null) return const Text('没有用户信息');
          return ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('data'),
                  onTap: () {},
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10);
        },
        error: (error, stack) => Center(child: Text('错误：$error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
