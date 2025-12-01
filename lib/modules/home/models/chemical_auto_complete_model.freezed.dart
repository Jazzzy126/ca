// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemical_auto_complete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChemicalAutoCompleteModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'highlight')
  String get highlight;

  /// Create a copy of ChemicalAutoCompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalAutoCompleteModelCopyWith<ChemicalAutoCompleteModel> get copyWith =>
      _$ChemicalAutoCompleteModelCopyWithImpl<ChemicalAutoCompleteModel>(
          this as ChemicalAutoCompleteModel, _$identity);

  /// Serializes this ChemicalAutoCompleteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalAutoCompleteModel'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('highlight', highlight));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalAutoCompleteModel &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.highlight, highlight) ||
                other.highlight == highlight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, highlight);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalAutoCompleteModel(content: $content, highlight: $highlight)';
  }
}

/// @nodoc
abstract mixin class $ChemicalAutoCompleteModelCopyWith<$Res> {
  factory $ChemicalAutoCompleteModelCopyWith(ChemicalAutoCompleteModel value,
          $Res Function(ChemicalAutoCompleteModel) _then) =
      _$ChemicalAutoCompleteModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'highlight') String highlight});
}

/// @nodoc
class _$ChemicalAutoCompleteModelCopyWithImpl<$Res>
    implements $ChemicalAutoCompleteModelCopyWith<$Res> {
  _$ChemicalAutoCompleteModelCopyWithImpl(this._self, this._then);

  final ChemicalAutoCompleteModel _self;
  final $Res Function(ChemicalAutoCompleteModel) _then;

  /// Create a copy of ChemicalAutoCompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? highlight = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      highlight: null == highlight
          ? _self.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalAutoCompleteModel].
extension ChemicalAutoCompleteModelPatterns on ChemicalAutoCompleteModel {
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
    TResult Function(_ChemicalAutoCompleteModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel() when $default != null:
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
    TResult Function(_ChemicalAutoCompleteModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel():
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
    TResult? Function(_ChemicalAutoCompleteModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'highlight') String highlight)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel() when $default != null:
        return $default(_that.content, _that.highlight);
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
    TResult Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'highlight') String highlight)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel():
        return $default(_that.content, _that.highlight);
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
    TResult? Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'highlight') String highlight)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalAutoCompleteModel() when $default != null:
        return $default(_that.content, _that.highlight);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalAutoCompleteModel
    with DiagnosticableTreeMixin
    implements ChemicalAutoCompleteModel {
  const _ChemicalAutoCompleteModel(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'highlight') required this.highlight});
  factory _ChemicalAutoCompleteModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalAutoCompleteModelFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'highlight')
  final String highlight;

  /// Create a copy of ChemicalAutoCompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalAutoCompleteModelCopyWith<_ChemicalAutoCompleteModel>
      get copyWith =>
          __$ChemicalAutoCompleteModelCopyWithImpl<_ChemicalAutoCompleteModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalAutoCompleteModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalAutoCompleteModel'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('highlight', highlight));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalAutoCompleteModel &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.highlight, highlight) ||
                other.highlight == highlight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, highlight);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalAutoCompleteModel(content: $content, highlight: $highlight)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalAutoCompleteModelCopyWith<$Res>
    implements $ChemicalAutoCompleteModelCopyWith<$Res> {
  factory _$ChemicalAutoCompleteModelCopyWith(_ChemicalAutoCompleteModel value,
          $Res Function(_ChemicalAutoCompleteModel) _then) =
      __$ChemicalAutoCompleteModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'highlight') String highlight});
}

/// @nodoc
class __$ChemicalAutoCompleteModelCopyWithImpl<$Res>
    implements _$ChemicalAutoCompleteModelCopyWith<$Res> {
  __$ChemicalAutoCompleteModelCopyWithImpl(this._self, this._then);

  final _ChemicalAutoCompleteModel _self;
  final $Res Function(_ChemicalAutoCompleteModel) _then;

  /// Create a copy of ChemicalAutoCompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? highlight = null,
  }) {
    return _then(_ChemicalAutoCompleteModel(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      highlight: null == highlight
          ? _self.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
