import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_info_model.freezed.dart';

part 'auth_info_model.g.dart';

@freezed
abstract class AuthInfoModel with _$AuthInfoModel {
  const factory AuthInfoModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'profile_img') String? profileImg,
  }) = _AuthInfoModel;

  factory AuthInfoModel.fromJson(Map<String, Object?> json) =>
      _$AuthInfoModelFromJson(json);
}
