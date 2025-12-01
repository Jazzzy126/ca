import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_client.dart';
import '../../../core/storage/keys/storage_keys.dart';
import '../models/auth_info_model.dart';
import '../services/auth_info_service.dart';

part 'auth_info_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthInfoNotifier extends _$AuthInfoNotifier {
  final _storage = const FlutterSecureStorage();
  final String _key = StorageKeys.authInfo.key;

  @override
  Future<AuthInfoModel?> build() async {
    final String? tokenJson = await _storage.read(key: _key);
    if (tokenJson != null) {
      return AuthInfoModel.fromJson(json.decode(tokenJson));
    }
    return null;
  }

  Future<void> write() async {
    state = const AsyncLoading();
    try {
      final AuthInfoModel authInfo = await authInfoService.authInfo();

      final tokenJson = json.encode(authInfo.toJson());
      await _storage.write(key: _key, value: tokenJson);

      state = AsyncData(authInfo);
    } catch (e, stackTrace) {
      if (e is DioException) {
        state = AsyncError('${e.message}', stackTrace);
      } else {
        state = AsyncError(e, stackTrace);
      }
    }
  }
}
