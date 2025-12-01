// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthInfoModel _$AuthInfoModelFromJson(Map<String, dynamic> json) =>
    _AuthInfoModel(
      userId: json['user_id'] as String,
      username: json['username'] as String,
      profileImg: json['profile_img'] as String?,
    );

Map<String, dynamic> _$AuthInfoModelToJson(_AuthInfoModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'profile_img': instance.profileImg,
    };
