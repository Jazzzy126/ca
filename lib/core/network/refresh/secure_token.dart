import 'package:fresh_dio/fresh_dio.dart';

class SecureToken extends OAuth2Token {
  const SecureToken({
    required super.accessToken,
    super.tokenType = null,
    super.expiresIn,
    super.refreshToken,
    super.scope,
  });

  /// Convert a JSON map to an SecureToken object
  factory SecureToken.fromJson(Map<String, dynamic> json) {
    return SecureToken(
      accessToken: json['accessToken'],
      tokenType: json['tokenType'],
      expiresIn: json['expiresIn'],
      refreshToken: json['refreshToken'],
      scope: json['scope'],
    );
  }

  /// Convert the SecureToken object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
      'refreshToken': refreshToken,
      'scope': scope,
    };
  }
}
