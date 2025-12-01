import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'token_params.freezed.dart';
part 'token_params.g.dart';

@freezed
abstract class TokenParams with _$TokenParams {
  const factory TokenParams({
    @JsonKey(name: 'grant_type') String? grantType,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _TokenParams;

  factory TokenParams.fromJson(Map<String, Object?> json) =>
      _$TokenParamsFromJson(json);
}
