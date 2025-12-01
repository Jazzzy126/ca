import 'package:fresh_dio/fresh_dio.dart';
import 'package:synchronized/synchronized.dart';

import '../../../modules/auth/models/params/token_params.dart';
import '../../../modules/auth/models/token_model.dart';
import '../../../modules/auth/services/auth_service.dart';
import 'secure_token_storage.dart';
import 'secure_token.dart';

class RefreshToken {
  static final _lock = Lock(); // 锁

  static SecureToken? _latestRefreshedToken;

  static Fresh<SecureToken> oAuth2 = Fresh.oAuth2(
    tokenStorage: SecureTokenStorage(),
    refreshToken: _refreshToken,
  );

  static Future<void> setToken(TokenModel token) async {
    await oAuth2.setToken(SecureToken(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      tokenType: token.tokenType,
      expiresIn: token.expiresIn,
    ));
  }

  static Future<SecureToken?> getToken() async {
    return oAuth2.token;
  }

  static Future<void> clearToken() async {
    oAuth2.clearToken();
  }

  static Future<SecureToken> _refreshToken(
      SecureToken? token, Dio client) async {
    return _lock.synchronized(() async {
      // 避免重复刷新
      if (identical(token, _latestRefreshedToken) &&
          _latestRefreshedToken != null) {
        return _latestRefreshedToken!;
      }

      final Map<String, dynamic> params = TokenParams(
        refreshToken: token?.refreshToken ?? '',
        grantType: 'refresh_token',
      ).toJson();

      params.removeWhere((key, value) => value == null || value == '');

      // 调用 AuthService 刷新 token
      final TokenModel tokenModel = await authService.refreshToken(params);

      // 构造新的 SecureToken
      _latestRefreshedToken = SecureToken(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
        tokenType: tokenModel.tokenType,
        expiresIn: tokenModel.expiresIn,
      );


      return _latestRefreshedToken!;
    });
  }
}
