// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemical_search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChemicalSearchParams implements DiagnosticableTreeMixin {
  @JsonKey(name: 'content')
  String? get content;
  @JsonKey(name: 'molecular_weight')
  String? get molecularWeight;
  @JsonKey(name: 'density')
  String? get density;
  @JsonKey(name: 'fusion_point')
  String? get fusionPoint;
  @JsonKey(name: 'boiling_point')
  String? get boilingPoint;
  @JsonKey(name: 'flash_point')
  String? get flashPoint;
  @JsonKey(name: 'current')
  int? get current;
  @JsonKey(name: 'size')
  int? get size;

  /// Create a copy of ChemicalSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalSearchParamsCopyWith<ChemicalSearchParams> get copyWith =>
      _$ChemicalSearchParamsCopyWithImpl<ChemicalSearchParams>(
          this as ChemicalSearchParams, _$identity);

  /// Serializes this ChemicalSearchParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchParams'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('density', density))
      ..add(DiagnosticsProperty('fusionPoint', fusionPoint))
      ..add(DiagnosticsProperty('boilingPoint', boilingPoint))
      ..add(DiagnosticsProperty('flashPoint', flashPoint))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalSearchParams &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.fusionPoint, fusionPoint) ||
                other.fusionPoint == fusionPoint) &&
            (identical(other.boilingPoint, boilingPoint) ||
                other.boilingPoint == boilingPoint) &&
            (identical(other.flashPoint, flashPoint) ||
                other.flashPoint == flashPoint) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, molecularWeight,
      density, fusionPoint, boilingPoint, flashPoint, current, size);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchParams(content: $content, molecularWeight: $molecularWeight, density: $density, fusionPoint: $fusionPoint, boilingPoint: $boilingPoint, flashPoint: $flashPoint, current: $current, size: $size)';
  }
}

/// @nodoc
abstract mixin class $ChemicalSearchParamsCopyWith<$Res> {
  factory $ChemicalSearchParamsCopyWith(ChemicalSearchParams value,
          $Res Function(ChemicalSearchParams) _then) =
      _$ChemicalSearchParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'molecular_weight') String? molecularWeight,
      @JsonKey(name: 'density') String? density,
      @JsonKey(name: 'fusion_point') String? fusionPoint,
      @JsonKey(name: 'boiling_point') String? boilingPoint,
      @JsonKey(name: 'flash_point') String? flashPoint,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'size') int? size});
}

/// @nodoc
class _$ChemicalSearchParamsCopyWithImpl<$Res>
    implements $ChemicalSearchParamsCopyWith<$Res> {
  _$ChemicalSearchParamsCopyWithImpl(this._self, this._then);

  final ChemicalSearchParams _self;
  final $Res Function(ChemicalSearchParams) _then;

  /// Create a copy of ChemicalSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? molecularWeight = freezed,
    Object? density = freezed,
    Object? fusionPoint = freezed,
    Object? boilingPoint = freezed,
    Object? flashPoint = freezed,
    Object? current = freezed,
    Object? size = freezed,
  }) {
    return _then(_self.copyWith(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularWeight: freezed == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      density: freezed == density
          ? _self.density
          : density // ignore: cast_nullable_to_non_nullable
              as String?,
      fusionPoint: freezed == fusionPoint
          ? _self.fusionPoint
          : fusionPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      boilingPoint: freezed == boilingPoint
          ? _self.boilingPoint
          : boilingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      flashPoint: freezed == flashPoint
          ? _self.flashPoint
          : flashPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      current: freezed == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalSearchParams].
extension ChemicalSearchParamsPatterns on ChemicalSearchParams {
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
    TResult Function(_ChemicalSearchParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams() when $default != null:
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
    TResult Function(_ChemicalSearchParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams():
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
    TResult? Function(_ChemicalSearchParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams() when $default != null:
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
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'fusion_point') String? fusionPoint,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'current') int? current,
            @JsonKey(name: 'size') int? size)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams() when $default != null:
        return $default(
            _that.content,
            _that.molecularWeight,
            _that.density,
            _that.fusionPoint,
            _that.boilingPoint,
            _that.flashPoint,
            _that.current,
            _that.size);
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
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'fusion_point') String? fusionPoint,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'current') int? current,
            @JsonKey(name: 'size') int? size)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams():
        return $default(
            _that.content,
            _that.molecularWeight,
            _that.density,
            _that.fusionPoint,
            _that.boilingPoint,
            _that.flashPoint,
            _that.current,
            _that.size);
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
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'fusion_point') String? fusionPoint,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'current') int? current,
            @JsonKey(name: 'size') int? size)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchParams() when $default != null:
        return $default(
            _that.content,
            _that.molecularWeight,
            _that.density,
            _that.fusionPoint,
            _that.boilingPoint,
            _that.flashPoint,
            _that.current,
            _that.size);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalSearchParams
    with DiagnosticableTreeMixin
    implements ChemicalSearchParams {
  const _ChemicalSearchParams(
      {@JsonKey(name: 'content') this.content,
      @JsonKey(name: 'molecular_weight') this.molecularWeight,
      @JsonKey(name: 'density') this.density,
      @JsonKey(name: 'fusion_point') this.fusionPoint,
      @JsonKey(name: 'boiling_point') this.boilingPoint,
      @JsonKey(name: 'flash_point') this.flashPoint,
      @JsonKey(name: 'current') this.current,
      @JsonKey(name: 'size') this.size});
  factory _ChemicalSearchParams.fromJson(Map<String, dynamic> json) =>
      _$ChemicalSearchParamsFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'molecular_weight')
  final String? molecularWeight;
  @override
  @JsonKey(name: 'density')
  final String? density;
  @override
  @JsonKey(name: 'fusion_point')
  final String? fusionPoint;
  @override
  @JsonKey(name: 'boiling_point')
  final String? boilingPoint;
  @override
  @JsonKey(name: 'flash_point')
  final String? flashPoint;
  @override
  @JsonKey(name: 'current')
  final int? current;
  @override
  @JsonKey(name: 'size')
  final int? size;

  /// Create a copy of ChemicalSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalSearchParamsCopyWith<_ChemicalSearchParams> get copyWith =>
      __$ChemicalSearchParamsCopyWithImpl<_ChemicalSearchParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalSearchParamsToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchParams'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('density', density))
      ..add(DiagnosticsProperty('fusionPoint', fusionPoint))
      ..add(DiagnosticsProperty('boilingPoint', boilingPoint))
      ..add(DiagnosticsProperty('flashPoint', flashPoint))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalSearchParams &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.fusionPoint, fusionPoint) ||
                other.fusionPoint == fusionPoint) &&
            (identical(other.boilingPoint, boilingPoint) ||
                other.boilingPoint == boilingPoint) &&
            (identical(other.flashPoint, flashPoint) ||
                other.flashPoint == flashPoint) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, molecularWeight,
      density, fusionPoint, boilingPoint, flashPoint, current, size);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchParams(content: $content, molecularWeight: $molecularWeight, density: $density, fusionPoint: $fusionPoint, boilingPoint: $boilingPoint, flashPoint: $flashPoint, current: $current, size: $size)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalSearchParamsCopyWith<$Res>
    implements $ChemicalSearchParamsCopyWith<$Res> {
  factory _$ChemicalSearchParamsCopyWith(_ChemicalSearchParams value,
          $Res Function(_ChemicalSearchParams) _then) =
      __$ChemicalSearchParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'molecular_weight') String? molecularWeight,
      @JsonKey(name: 'density') String? density,
      @JsonKey(name: 'fusion_point') String? fusionPoint,
      @JsonKey(name: 'boiling_point') String? boilingPoint,
      @JsonKey(name: 'flash_point') String? flashPoint,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'size') int? size});
}

/// @nodoc
class __$ChemicalSearchParamsCopyWithImpl<$Res>
    implements _$ChemicalSearchParamsCopyWith<$Res> {
  __$ChemicalSearchParamsCopyWithImpl(this._self, this._then);

  final _ChemicalSearchParams _self;
  final $Res Function(_ChemicalSearchParams) _then;

  /// Create a copy of ChemicalSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? molecularWeight = freezed,
    Object? density = freezed,
    Object? fusionPoint = freezed,
    Object? boilingPoint = freezed,
    Object? flashPoint = freezed,
    Object? current = freezed,
    Object? size = freezed,
  }) {
    return _then(_ChemicalSearchParams(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularWeight: freezed == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      density: freezed == density
          ? _self.density
          : density // ignore: cast_nullable_to_non_nullable
              as String?,
      fusionPoint: freezed == fusionPoint
          ? _self.fusionPoint
          : fusionPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      boilingPoint: freezed == boilingPoint
          ? _self.boilingPoint
          : boilingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      flashPoint: freezed == flashPoint
          ? _self.flashPoint
          : flashPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      current: freezed == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
