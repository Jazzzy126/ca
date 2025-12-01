import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ca/modules/auth/providers/auth_info_notifier.dart';

import '../../../app/app.dart';
import '../../../app/router/app_router.gr.dart';
import '../../../core/network/refresh/refresh_token.dart';
import '../../../core/network/refresh/secure_token.dart';
import '../models/params/token_params.dart';
import '../models/token_model.dart';
import '../services/auth_service.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<SecureToken?> build() async {
    return await RefreshToken.getToken();
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    // 首先设置为加载状态
    state = const AsyncLoading();
    try {
      final TokenModel tokenModel = await authService.token(
        TokenParams(
          username: username,
          password: password,
          grantType: 'password',
        ).toJson(),
      );

      await RefreshToken.setToken(tokenModel);
      await ref.read(authInfoProvider.notifier).write();
      await appRouter.replaceAll(
        [const BodyRoute()],
      );
      state = AsyncData(await RefreshToken.getToken());
    } catch (e, stackTrace) {
      if (e is DioException) {
        state = AsyncError('${e.message}', stackTrace);
      } else {
        state = AsyncError(e, stackTrace);
      }
    }
  }

  Future<void> logout() async {
    await RefreshToken.clearToken();
    await appRouter.replaceAll(
      [const LoginRoute()],
    );
  }
}
