// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenParams _$TokenParamsFromJson(Map<String, dynamic> json) => _TokenParams(
      grantType: json['grant_type'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$TokenParamsToJson(_TokenParams instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'refresh_token': instance.refreshToken,
    };
