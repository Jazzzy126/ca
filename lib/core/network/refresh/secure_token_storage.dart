import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';

import 'dart:convert';

import '../../storage/keys/storage_keys.dart';
import 'secure_token.dart';

class SecureTokenStorage implements TokenStorage<SecureToken> {
  final asyncPrefs = const FlutterSecureStorage();

  final String _key = StorageKeys.authToken.key;

  @override
  Future<void> delete() async {
    await asyncPrefs.delete(key: _key);
  }

  @override
  Future<SecureToken?> read() async {
    final String? tokenJson = await asyncPrefs.read(key: _key);
    if (tokenJson != null) {
      return SecureToken?.fromJson(json.decode(tokenJson));
    }
    return null;
  }

  @override
  Future<void> write(SecureToken token) async {
    final tokenJson = json.encode(token.toJson());
    await asyncPrefs.write(key: _key, value: tokenJson);
  }
}
