import 'package:ca/core/extensions/context_extensions.dart';
import 'package:ca/core/extensions/spacing_extensions.dart';
import 'package:ca/core/extensions/string_extensions.dart';
import 'package:ca/modules/auth/providers/auth_info_notifier.dart';
import 'package:ca/modules/auth/providers/auth_notifier.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BodyAction extends ConsumerWidget {
  const BodyAction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authProvider.notifier);
    final authInfoAsync = ref.watch(authInfoProvider);

    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, color: context.colorScheme.onPrimary),
        ),
        PopupMenuButton(
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: context.spacing.md),
            child: Row(
              spacing: context.spacing.md,
              children: [
                authInfoAsync.maybeWhen(
                  data: (data) {
                    return CircularProfileAvatar(
                      data?.profileImg ?? '',
                      initialsText: Text(
                        data?.username.validate(value: 'U').firstCharUpper ??
                            'U',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: context.colorScheme.onPrimaryFixed
                        ),
                      ),
                      radius: kToolbarHeight / 4,
                      backgroundColor: context.colorScheme.primaryFixed,
                      elevation: 5,
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                ),
                Text(
                  authInfoAsync.maybeWhen(
                    data: (data) => data?.username ?? '',
                    orElse: () => '',
                  ),
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: context.colorScheme.onPrimary),
                ),
              ],
            ),
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: Row(
                spacing: context.spacing.md,
                children: const [
                  Icon(Icons.logout),
                  Text('退出'),
                ],
              ),
              onTap: () {
                authNotifier.logout();
              },
            ),
          ],
        ),
      ],
    );
  }
}
