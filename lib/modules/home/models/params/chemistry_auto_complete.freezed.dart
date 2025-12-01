// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemistry_auto_complete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChemistryAutoComplete implements DiagnosticableTreeMixin {
  @JsonKey(name: 'content')
  String? get content;
  @JsonKey(name: 'a')
  String? get a;
  @JsonKey(name: 'b')
  String? get b;
  @JsonKey(name: 'c')
  String? get c;
  @JsonKey(name: 'd')
  String? get d;
  @JsonKey(name: 'e')
  String? get e;

  /// Create a copy of ChemistryAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemistryAutoCompleteCopyWith<ChemistryAutoComplete> get copyWith =>
      _$ChemistryAutoCompleteCopyWithImpl<ChemistryAutoComplete>(
          this as ChemistryAutoComplete, _$identity);

  /// Serializes this ChemistryAutoComplete to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemistryAutoComplete'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b))
      ..add(DiagnosticsProperty('c', c))
      ..add(DiagnosticsProperty('d', d))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemistryAutoComplete &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d) &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, a, b, c, d, e);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemistryAutoComplete(content: $content, a: $a, b: $b, c: $c, d: $d, e: $e)';
  }
}

/// @nodoc
abstract mixin class $ChemistryAutoCompleteCopyWith<$Res> {
  factory $ChemistryAutoCompleteCopyWith(ChemistryAutoComplete value,
          $Res Function(ChemistryAutoComplete) _then) =
      _$ChemistryAutoCompleteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'a') String? a,
      @JsonKey(name: 'b') String? b,
      @JsonKey(name: 'c') String? c,
      @JsonKey(name: 'd') String? d,
      @JsonKey(name: 'e') String? e});
}

/// @nodoc
class _$ChemistryAutoCompleteCopyWithImpl<$Res>
    implements $ChemistryAutoCompleteCopyWith<$Res> {
  _$ChemistryAutoCompleteCopyWithImpl(this._self, this._then);

  final ChemistryAutoComplete _self;
  final $Res Function(ChemistryAutoComplete) _then;

  /// Create a copy of ChemistryAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
    Object? e = freezed,
  }) {
    return _then(_self.copyWith(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      a: freezed == a
          ? _self.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _self.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
      c: freezed == c
          ? _self.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      d: freezed == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemistryAutoComplete].
extension ChemistryAutoCompletePatterns on ChemistryAutoComplete {
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
    TResult Function(_ChemistryAutoComplete value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete() when $default != null:
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
    TResult Function(_ChemistryAutoComplete value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete():
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
    TResult? Function(_ChemistryAutoComplete value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete() when $default != null:
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
            @JsonKey(name: 'content') String? content,
            @JsonKey(name: 'a') String? a,
            @JsonKey(name: 'b') String? b,
            @JsonKey(name: 'c') String? c,
            @JsonKey(name: 'd') String? d,
            @JsonKey(name: 'e') String? e)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete() when $default != null:
        return $default(
            _that.content, _that.a, _that.b, _that.c, _that.d, _that.e);
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
            @JsonKey(name: 'content') String? content,
            @JsonKey(name: 'a') String? a,
            @JsonKey(name: 'b') String? b,
            @JsonKey(name: 'c') String? c,
            @JsonKey(name: 'd') String? d,
            @JsonKey(name: 'e') String? e)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete():
        return $default(
            _that.content, _that.a, _that.b, _that.c, _that.d, _that.e);
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
            @JsonKey(name: 'content') String? content,
            @JsonKey(name: 'a') String? a,
            @JsonKey(name: 'b') String? b,
            @JsonKey(name: 'c') String? c,
            @JsonKey(name: 'd') String? d,
            @JsonKey(name: 'e') String? e)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemistryAutoComplete() when $default != null:
        return $default(
            _that.content, _that.a, _that.b, _that.c, _that.d, _that.e);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemistryAutoComplete
    with DiagnosticableTreeMixin
    implements ChemistryAutoComplete {
  const _ChemistryAutoComplete(
      {@JsonKey(name: 'content') this.content,
      @JsonKey(name: 'a') this.a,
      @JsonKey(name: 'b') this.b,
      @JsonKey(name: 'c') this.c,
      @JsonKey(name: 'd') this.d,
      @JsonKey(name: 'e') this.e});
  factory _ChemistryAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$ChemistryAutoCompleteFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'a')
  final String? a;
  @override
  @JsonKey(name: 'b')
  final String? b;
  @override
  @JsonKey(name: 'c')
  final String? c;
  @override
  @JsonKey(name: 'd')
  final String? d;
  @override
  @JsonKey(name: 'e')
  final String? e;

  /// Create a copy of ChemistryAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemistryAutoCompleteCopyWith<_ChemistryAutoComplete> get copyWith =>
      __$ChemistryAutoCompleteCopyWithImpl<_ChemistryAutoComplete>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemistryAutoCompleteToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemistryAutoComplete'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b))
      ..add(DiagnosticsProperty('c', c))
      ..add(DiagnosticsProperty('d', d))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemistryAutoComplete &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d) &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, a, b, c, d, e);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemistryAutoComplete(content: $content, a: $a, b: $b, c: $c, d: $d, e: $e)';
  }
}

/// @nodoc
abstract mixin class _$ChemistryAutoCompleteCopyWith<$Res>
    implements $ChemistryAutoCompleteCopyWith<$Res> {
  factory _$ChemistryAutoCompleteCopyWith(_ChemistryAutoComplete value,
          $Res Function(_ChemistryAutoComplete) _then) =
      __$ChemistryAutoCompleteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'a') String? a,
      @JsonKey(name: 'b') String? b,
      @JsonKey(name: 'c') String? c,
      @JsonKey(name: 'd') String? d,
      @JsonKey(name: 'e') String? e});
}

/// @nodoc
class __$ChemistryAutoCompleteCopyWithImpl<$Res>
    implements _$ChemistryAutoCompleteCopyWith<$Res> {
  __$ChemistryAutoCompleteCopyWithImpl(this._self, this._then);

  final _ChemistryAutoComplete _self;
  final $Res Function(_ChemistryAutoComplete) _then;

  /// Create a copy of ChemistryAutoComplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
    Object? e = freezed,
  }) {
    return _then(_ChemistryAutoComplete(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      a: freezed == a
          ? _self.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _self.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
      c: freezed == c
          ? _self.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      d: freezed == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
