// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthInfoModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'profile_img')
  String? get profileImg;

  /// Create a copy of AuthInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthInfoModelCopyWith<AuthInfoModel> get copyWith =>
      _$AuthInfoModelCopyWithImpl<AuthInfoModel>(
          this as AuthInfoModel, _$identity);

  /// Serializes this AuthInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AuthInfoModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('profileImg', profileImg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthInfoModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, profileImg);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthInfoModel(userId: $userId, username: $username, profileImg: $profileImg)';
  }
}

/// @nodoc
abstract mixin class $AuthInfoModelCopyWith<$Res> {
  factory $AuthInfoModelCopyWith(
          AuthInfoModel value, $Res Function(AuthInfoModel) _then) =
      _$AuthInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'profile_img') String? profileImg});
}

/// @nodoc
class _$AuthInfoModelCopyWithImpl<$Res>
    implements $AuthInfoModelCopyWith<$Res> {
  _$AuthInfoModelCopyWithImpl(this._self, this._then);

  final AuthInfoModel _self;
  final $Res Function(AuthInfoModel) _then;

  /// Create a copy of AuthInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? profileImg = freezed,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: freezed == profileImg
          ? _self.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthInfoModel].
extension AuthInfoModelPatterns on AuthInfoModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthInfoModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthInfoModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthInfoModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'profile_img') String? profileImg)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel() when $default != null:
        return $default(_that.userId, _that.username, _that.profileImg);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'profile_img') String? profileImg)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel():
        return $default(_that.userId, _that.username, _that.profileImg);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'profile_img') String? profileImg)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthInfoModel() when $default != null:
        return $default(_that.userId, _that.username, _that.profileImg);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthInfoModel with DiagnosticableTreeMixin implements AuthInfoModel {
  const _AuthInfoModel(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'profile_img') this.profileImg});
  factory _AuthInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoModelFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;

  /// Create a copy of AuthInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthInfoModelCopyWith<_AuthInfoModel> get copyWith =>
      __$AuthInfoModelCopyWithImpl<_AuthInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthInfoModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AuthInfoModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('profileImg', profileImg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthInfoModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, profileImg);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthInfoModel(userId: $userId, username: $username, profileImg: $profileImg)';
  }
}

/// @nodoc
abstract mixin class _$AuthInfoModelCopyWith<$Res>
    implements $AuthInfoModelCopyWith<$Res> {
  factory _$AuthInfoModelCopyWith(
          _AuthInfoModel value, $Res Function(_AuthInfoModel) _then) =
      __$AuthInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'profile_img') String? profileImg});
}

/// @nodoc
class __$AuthInfoModelCopyWithImpl<$Res>
    implements _$AuthInfoModelCopyWith<$Res> {
  __$AuthInfoModelCopyWithImpl(this._self, this._then);

  final _AuthInfoModel _self;
  final $Res Function(_AuthInfoModel) _then;

  /// Create a copy of AuthInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? profileImg = freezed,
  }) {
    return _then(_AuthInfoModel(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: freezed == profileImg
          ? _self.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
