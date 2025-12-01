// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenParams implements DiagnosticableTreeMixin {
  @JsonKey(name: 'grant_type')
  String? get grantType;
  @JsonKey(name: 'username')
  String? get username;
  @JsonKey(name: 'password')
  String? get password;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;

  /// Create a copy of TokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenParamsCopyWith<TokenParams> get copyWith =>
      _$TokenParamsCopyWithImpl<TokenParams>(this as TokenParams, _$identity);

  /// Serializes this TokenParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TokenParams'))
      ..add(DiagnosticsProperty('grantType', grantType))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenParams &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, username, password, refreshToken);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenParams(grantType: $grantType, username: $username, password: $password, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $TokenParamsCopyWith<$Res> {
  factory $TokenParamsCopyWith(
          TokenParams value, $Res Function(TokenParams) _then) =
      _$TokenParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$TokenParamsCopyWithImpl<$Res> implements $TokenParamsCopyWith<$Res> {
  _$TokenParamsCopyWithImpl(this._self, this._then);

  final TokenParams _self;
  final $Res Function(TokenParams) _then;

  /// Create a copy of TokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_self.copyWith(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TokenParams].
extension TokenParamsPatterns on TokenParams {
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
    TResult Function(_TokenParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenParams() when $default != null:
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
    TResult Function(_TokenParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenParams():
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
    TResult? Function(_TokenParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenParams() when $default != null:
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
            @JsonKey(name: 'grant_type') String? grantType,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'refresh_token') String? refreshToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenParams() when $default != null:
        return $default(_that.grantType, _that.username, _that.password,
            _that.refreshToken);
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
            @JsonKey(name: 'grant_type') String? grantType,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'refresh_token') String? refreshToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenParams():
        return $default(_that.grantType, _that.username, _that.password,
            _that.refreshToken);
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
            @JsonKey(name: 'grant_type') String? grantType,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'refresh_token') String? refreshToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenParams() when $default != null:
        return $default(_that.grantType, _that.username, _that.password,
            _that.refreshToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TokenParams with DiagnosticableTreeMixin implements TokenParams {
  const _TokenParams(
      {@JsonKey(name: 'grant_type') this.grantType,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'refresh_token') this.refreshToken});
  factory _TokenParams.fromJson(Map<String, dynamic> json) =>
      _$TokenParamsFromJson(json);

  @override
  @JsonKey(name: 'grant_type')
  final String? grantType;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  /// Create a copy of TokenParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenParamsCopyWith<_TokenParams> get copyWith =>
      __$TokenParamsCopyWithImpl<_TokenParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenParamsToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TokenParams'))
      ..add(DiagnosticsProperty('grantType', grantType))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenParams &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, username, password, refreshToken);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenParams(grantType: $grantType, username: $username, password: $password, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$TokenParamsCopyWith<$Res>
    implements $TokenParamsCopyWith<$Res> {
  factory _$TokenParamsCopyWith(
          _TokenParams value, $Res Function(_TokenParams) _then) =
      __$TokenParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'grant_type') String? grantType,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$TokenParamsCopyWithImpl<$Res> implements _$TokenParamsCopyWith<$Res> {
  __$TokenParamsCopyWithImpl(this._self, this._then);

  final _TokenParams _self;
  final $Res Function(_TokenParams) _then;

  /// Create a copy of TokenParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? grantType = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_TokenParams(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
