// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemical_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChemicalDetailModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'summary')
  ChemicalDetailSummaryModel get summary;
  @JsonKey(name: 'detail')
  List<ChemicalDetailItemModel> get detail;

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailModelCopyWith<ChemicalDetailModel> get copyWith =>
      _$ChemicalDetailModelCopyWithImpl<ChemicalDetailModel>(
          this as ChemicalDetailModel, _$identity);

  /// Serializes this ChemicalDetailModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('detail', detail));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, summary, const DeepCollectionEquality().hash(detail));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailModel(id: $id, summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailModelCopyWith<$Res> {
  factory $ChemicalDetailModelCopyWith(
          ChemicalDetailModel value, $Res Function(ChemicalDetailModel) _then) =
      _$ChemicalDetailModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'summary') ChemicalDetailSummaryModel summary,
      @JsonKey(name: 'detail') List<ChemicalDetailItemModel> detail});

  $ChemicalDetailSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class _$ChemicalDetailModelCopyWithImpl<$Res>
    implements $ChemicalDetailModelCopyWith<$Res> {
  _$ChemicalDetailModelCopyWithImpl(this._self, this._then);

  final ChemicalDetailModel _self;
  final $Res Function(ChemicalDetailModel) _then;

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? summary = null,
    Object? detail = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailSummaryModel,
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ChemicalDetailItemModel>,
    ));
  }

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChemicalDetailSummaryModelCopyWith<$Res> get summary {
    return $ChemicalDetailSummaryModelCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailModel].
extension ChemicalDetailModelPatterns on ChemicalDetailModel {
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
    TResult Function(_ChemicalDetailModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel() when $default != null:
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
    TResult Function(_ChemicalDetailModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel():
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
    TResult? Function(_ChemicalDetailModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel() when $default != null:
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
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'summary') ChemicalDetailSummaryModel summary,
            @JsonKey(name: 'detail') List<ChemicalDetailItemModel> detail)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel() when $default != null:
        return $default(_that.id, _that.summary, _that.detail);
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
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'summary') ChemicalDetailSummaryModel summary,
            @JsonKey(name: 'detail') List<ChemicalDetailItemModel> detail)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel():
        return $default(_that.id, _that.summary, _that.detail);
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
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'summary') ChemicalDetailSummaryModel summary,
            @JsonKey(name: 'detail') List<ChemicalDetailItemModel> detail)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailModel() when $default != null:
        return $default(_that.id, _that.summary, _that.detail);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailModel
    with DiagnosticableTreeMixin
    implements ChemicalDetailModel {
  const _ChemicalDetailModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'detail')
      required final List<ChemicalDetailItemModel> detail})
      : _detail = detail;
  factory _ChemicalDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'summary')
  final ChemicalDetailSummaryModel summary;
  final List<ChemicalDetailItemModel> _detail;
  @override
  @JsonKey(name: 'detail')
  List<ChemicalDetailItemModel> get detail {
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detail);
  }

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailModelCopyWith<_ChemicalDetailModel> get copyWith =>
      __$ChemicalDetailModelCopyWithImpl<_ChemicalDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('detail', detail));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, summary, const DeepCollectionEquality().hash(_detail));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailModel(id: $id, summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailModelCopyWith<$Res>
    implements $ChemicalDetailModelCopyWith<$Res> {
  factory _$ChemicalDetailModelCopyWith(_ChemicalDetailModel value,
          $Res Function(_ChemicalDetailModel) _then) =
      __$ChemicalDetailModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'summary') ChemicalDetailSummaryModel summary,
      @JsonKey(name: 'detail') List<ChemicalDetailItemModel> detail});

  @override
  $ChemicalDetailSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class __$ChemicalDetailModelCopyWithImpl<$Res>
    implements _$ChemicalDetailModelCopyWith<$Res> {
  __$ChemicalDetailModelCopyWithImpl(this._self, this._then);

  final _ChemicalDetailModel _self;
  final $Res Function(_ChemicalDetailModel) _then;

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? summary = null,
    Object? detail = null,
  }) {
    return _then(_ChemicalDetailModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailSummaryModel,
      detail: null == detail
          ? _self._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ChemicalDetailItemModel>,
    ));
  }

  /// Create a copy of ChemicalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChemicalDetailSummaryModelCopyWith<$Res> get summary {
    return $ChemicalDetailSummaryModelCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// @nodoc
mixin _$ChemicalDetailSummaryModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'cas')
  String? get cas;
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'en_name')
  String? get enName;
  @JsonKey(name: 'img')
  String? get img;
  @JsonKey(name: 'struct_img_url')
  String? get structImgUrl;
  @JsonKey(name: 'molecular_weight')
  String? get molecularWeight;
  @JsonKey(name: 'molecular_formula')
  String? get molecularFormula;
  @JsonKey(name: 'density')
  String? get density;
  @JsonKey(name: 'boiling_point')
  String? get boilingPoint;
  @JsonKey(name: 'fusing_point')
  String? get fusingPoint;
  @JsonKey(name: 'flash_point')
  String? get flashPoint;
  @JsonKey(name: 'symbols')
  List<String>? get symbols;
  @JsonKey(name: 'signal_word')
  String? get signalWord;

  /// Create a copy of ChemicalDetailSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailSummaryModelCopyWith<ChemicalDetailSummaryModel>
      get copyWith =>
          _$ChemicalDetailSummaryModelCopyWithImpl<ChemicalDetailSummaryModel>(
              this as ChemicalDetailSummaryModel, _$identity);

  /// Serializes this ChemicalDetailSummaryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSummaryModel'))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('structImgUrl', structImgUrl))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('molecularFormula', molecularFormula))
      ..add(DiagnosticsProperty('density', density))
      ..add(DiagnosticsProperty('boilingPoint', boilingPoint))
      ..add(DiagnosticsProperty('fusingPoint', fusingPoint))
      ..add(DiagnosticsProperty('flashPoint', flashPoint))
      ..add(DiagnosticsProperty('symbols', symbols))
      ..add(DiagnosticsProperty('signalWord', signalWord));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailSummaryModel &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.structImgUrl, structImgUrl) ||
                other.structImgUrl == structImgUrl) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.boilingPoint, boilingPoint) ||
                other.boilingPoint == boilingPoint) &&
            (identical(other.fusingPoint, fusingPoint) ||
                other.fusingPoint == fusingPoint) &&
            (identical(other.flashPoint, flashPoint) ||
                other.flashPoint == flashPoint) &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            (identical(other.signalWord, signalWord) ||
                other.signalWord == signalWord));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cas,
      name,
      enName,
      img,
      structImgUrl,
      molecularWeight,
      molecularFormula,
      density,
      boilingPoint,
      fusingPoint,
      flashPoint,
      const DeepCollectionEquality().hash(symbols),
      signalWord);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSummaryModel(cas: $cas, name: $name, enName: $enName, img: $img, structImgUrl: $structImgUrl, molecularWeight: $molecularWeight, molecularFormula: $molecularFormula, density: $density, boilingPoint: $boilingPoint, fusingPoint: $fusingPoint, flashPoint: $flashPoint, symbols: $symbols, signalWord: $signalWord)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailSummaryModelCopyWith<$Res> {
  factory $ChemicalDetailSummaryModelCopyWith(ChemicalDetailSummaryModel value,
          $Res Function(ChemicalDetailSummaryModel) _then) =
      _$ChemicalDetailSummaryModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'cas') String? cas,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'en_name') String? enName,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'struct_img_url') String? structImgUrl,
      @JsonKey(name: 'molecular_weight') String? molecularWeight,
      @JsonKey(name: 'molecular_formula') String? molecularFormula,
      @JsonKey(name: 'density') String? density,
      @JsonKey(name: 'boiling_point') String? boilingPoint,
      @JsonKey(name: 'fusing_point') String? fusingPoint,
      @JsonKey(name: 'flash_point') String? flashPoint,
      @JsonKey(name: 'symbols') List<String>? symbols,
      @JsonKey(name: 'signal_word') String? signalWord});
}

/// @nodoc
class _$ChemicalDetailSummaryModelCopyWithImpl<$Res>
    implements $ChemicalDetailSummaryModelCopyWith<$Res> {
  _$ChemicalDetailSummaryModelCopyWithImpl(this._self, this._then);

  final ChemicalDetailSummaryModel _self;
  final $Res Function(ChemicalDetailSummaryModel) _then;

  /// Create a copy of ChemicalDetailSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cas = freezed,
    Object? name = freezed,
    Object? enName = freezed,
    Object? img = freezed,
    Object? structImgUrl = freezed,
    Object? molecularWeight = freezed,
    Object? molecularFormula = freezed,
    Object? density = freezed,
    Object? boilingPoint = freezed,
    Object? fusingPoint = freezed,
    Object? flashPoint = freezed,
    Object? symbols = freezed,
    Object? signalWord = freezed,
  }) {
    return _then(_self.copyWith(
      cas: freezed == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _self.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      structImgUrl: freezed == structImgUrl
          ? _self.structImgUrl
          : structImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularWeight: freezed == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormula: freezed == molecularFormula
          ? _self.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      density: freezed == density
          ? _self.density
          : density // ignore: cast_nullable_to_non_nullable
              as String?,
      boilingPoint: freezed == boilingPoint
          ? _self.boilingPoint
          : boilingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      fusingPoint: freezed == fusingPoint
          ? _self.fusingPoint
          : fusingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      flashPoint: freezed == flashPoint
          ? _self.flashPoint
          : flashPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      symbols: freezed == symbols
          ? _self.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signalWord: freezed == signalWord
          ? _self.signalWord
          : signalWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailSummaryModel].
extension ChemicalDetailSummaryModelPatterns on ChemicalDetailSummaryModel {
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
    TResult Function(_ChemicalDetailSummaryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel() when $default != null:
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
    TResult Function(_ChemicalDetailSummaryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel():
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
    TResult? Function(_ChemicalDetailSummaryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel() when $default != null:
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
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'en_name') String? enName,
            @JsonKey(name: 'img') String? img,
            @JsonKey(name: 'struct_img_url') String? structImgUrl,
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'molecular_formula') String? molecularFormula,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'fusing_point') String? fusingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'symbols') List<String>? symbols,
            @JsonKey(name: 'signal_word') String? signalWord)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel() when $default != null:
        return $default(
            _that.cas,
            _that.name,
            _that.enName,
            _that.img,
            _that.structImgUrl,
            _that.molecularWeight,
            _that.molecularFormula,
            _that.density,
            _that.boilingPoint,
            _that.fusingPoint,
            _that.flashPoint,
            _that.symbols,
            _that.signalWord);
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
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'en_name') String? enName,
            @JsonKey(name: 'img') String? img,
            @JsonKey(name: 'struct_img_url') String? structImgUrl,
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'molecular_formula') String? molecularFormula,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'fusing_point') String? fusingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'symbols') List<String>? symbols,
            @JsonKey(name: 'signal_word') String? signalWord)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel():
        return $default(
            _that.cas,
            _that.name,
            _that.enName,
            _that.img,
            _that.structImgUrl,
            _that.molecularWeight,
            _that.molecularFormula,
            _that.density,
            _that.boilingPoint,
            _that.fusingPoint,
            _that.flashPoint,
            _that.symbols,
            _that.signalWord);
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
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'en_name') String? enName,
            @JsonKey(name: 'img') String? img,
            @JsonKey(name: 'struct_img_url') String? structImgUrl,
            @JsonKey(name: 'molecular_weight') String? molecularWeight,
            @JsonKey(name: 'molecular_formula') String? molecularFormula,
            @JsonKey(name: 'density') String? density,
            @JsonKey(name: 'boiling_point') String? boilingPoint,
            @JsonKey(name: 'fusing_point') String? fusingPoint,
            @JsonKey(name: 'flash_point') String? flashPoint,
            @JsonKey(name: 'symbols') List<String>? symbols,
            @JsonKey(name: 'signal_word') String? signalWord)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSummaryModel() when $default != null:
        return $default(
            _that.cas,
            _that.name,
            _that.enName,
            _that.img,
            _that.structImgUrl,
            _that.molecularWeight,
            _that.molecularFormula,
            _that.density,
            _that.boilingPoint,
            _that.fusingPoint,
            _that.flashPoint,
            _that.symbols,
            _that.signalWord);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailSummaryModel
    with DiagnosticableTreeMixin
    implements ChemicalDetailSummaryModel {
  const _ChemicalDetailSummaryModel(
      {@JsonKey(name: 'cas') this.cas,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'en_name') this.enName,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'struct_img_url') this.structImgUrl,
      @JsonKey(name: 'molecular_weight') this.molecularWeight,
      @JsonKey(name: 'molecular_formula') this.molecularFormula,
      @JsonKey(name: 'density') this.density,
      @JsonKey(name: 'boiling_point') this.boilingPoint,
      @JsonKey(name: 'fusing_point') this.fusingPoint,
      @JsonKey(name: 'flash_point') this.flashPoint,
      @JsonKey(name: 'symbols') final List<String>? symbols,
      @JsonKey(name: 'signal_word') this.signalWord})
      : _symbols = symbols;
  factory _ChemicalDetailSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailSummaryModelFromJson(json);

  @override
  @JsonKey(name: 'cas')
  final String? cas;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'en_name')
  final String? enName;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'struct_img_url')
  final String? structImgUrl;
  @override
  @JsonKey(name: 'molecular_weight')
  final String? molecularWeight;
  @override
  @JsonKey(name: 'molecular_formula')
  final String? molecularFormula;
  @override
  @JsonKey(name: 'density')
  final String? density;
  @override
  @JsonKey(name: 'boiling_point')
  final String? boilingPoint;
  @override
  @JsonKey(name: 'fusing_point')
  final String? fusingPoint;
  @override
  @JsonKey(name: 'flash_point')
  final String? flashPoint;
  final List<String>? _symbols;
  @override
  @JsonKey(name: 'symbols')
  List<String>? get symbols {
    final value = _symbols;
    if (value == null) return null;
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'signal_word')
  final String? signalWord;

  /// Create a copy of ChemicalDetailSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailSummaryModelCopyWith<_ChemicalDetailSummaryModel>
      get copyWith => __$ChemicalDetailSummaryModelCopyWithImpl<
          _ChemicalDetailSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailSummaryModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSummaryModel'))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('structImgUrl', structImgUrl))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('molecularFormula', molecularFormula))
      ..add(DiagnosticsProperty('density', density))
      ..add(DiagnosticsProperty('boilingPoint', boilingPoint))
      ..add(DiagnosticsProperty('fusingPoint', fusingPoint))
      ..add(DiagnosticsProperty('flashPoint', flashPoint))
      ..add(DiagnosticsProperty('symbols', symbols))
      ..add(DiagnosticsProperty('signalWord', signalWord));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailSummaryModel &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.structImgUrl, structImgUrl) ||
                other.structImgUrl == structImgUrl) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.boilingPoint, boilingPoint) ||
                other.boilingPoint == boilingPoint) &&
            (identical(other.fusingPoint, fusingPoint) ||
                other.fusingPoint == fusingPoint) &&
            (identical(other.flashPoint, flashPoint) ||
                other.flashPoint == flashPoint) &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            (identical(other.signalWord, signalWord) ||
                other.signalWord == signalWord));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cas,
      name,
      enName,
      img,
      structImgUrl,
      molecularWeight,
      molecularFormula,
      density,
      boilingPoint,
      fusingPoint,
      flashPoint,
      const DeepCollectionEquality().hash(_symbols),
      signalWord);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSummaryModel(cas: $cas, name: $name, enName: $enName, img: $img, structImgUrl: $structImgUrl, molecularWeight: $molecularWeight, molecularFormula: $molecularFormula, density: $density, boilingPoint: $boilingPoint, fusingPoint: $fusingPoint, flashPoint: $flashPoint, symbols: $symbols, signalWord: $signalWord)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailSummaryModelCopyWith<$Res>
    implements $ChemicalDetailSummaryModelCopyWith<$Res> {
  factory _$ChemicalDetailSummaryModelCopyWith(
          _ChemicalDetailSummaryModel value,
          $Res Function(_ChemicalDetailSummaryModel) _then) =
      __$ChemicalDetailSummaryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cas') String? cas,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'en_name') String? enName,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'struct_img_url') String? structImgUrl,
      @JsonKey(name: 'molecular_weight') String? molecularWeight,
      @JsonKey(name: 'molecular_formula') String? molecularFormula,
      @JsonKey(name: 'density') String? density,
      @JsonKey(name: 'boiling_point') String? boilingPoint,
      @JsonKey(name: 'fusing_point') String? fusingPoint,
      @JsonKey(name: 'flash_point') String? flashPoint,
      @JsonKey(name: 'symbols') List<String>? symbols,
      @JsonKey(name: 'signal_word') String? signalWord});
}

/// @nodoc
class __$ChemicalDetailSummaryModelCopyWithImpl<$Res>
    implements _$ChemicalDetailSummaryModelCopyWith<$Res> {
  __$ChemicalDetailSummaryModelCopyWithImpl(this._self, this._then);

  final _ChemicalDetailSummaryModel _self;
  final $Res Function(_ChemicalDetailSummaryModel) _then;

  /// Create a copy of ChemicalDetailSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cas = freezed,
    Object? name = freezed,
    Object? enName = freezed,
    Object? img = freezed,
    Object? structImgUrl = freezed,
    Object? molecularWeight = freezed,
    Object? molecularFormula = freezed,
    Object? density = freezed,
    Object? boilingPoint = freezed,
    Object? fusingPoint = freezed,
    Object? flashPoint = freezed,
    Object? symbols = freezed,
    Object? signalWord = freezed,
  }) {
    return _then(_ChemicalDetailSummaryModel(
      cas: freezed == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _self.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      structImgUrl: freezed == structImgUrl
          ? _self.structImgUrl
          : structImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularWeight: freezed == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormula: freezed == molecularFormula
          ? _self.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      density: freezed == density
          ? _self.density
          : density // ignore: cast_nullable_to_non_nullable
              as String?,
      boilingPoint: freezed == boilingPoint
          ? _self.boilingPoint
          : boilingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      fusingPoint: freezed == fusingPoint
          ? _self.fusingPoint
          : fusingPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      flashPoint: freezed == flashPoint
          ? _self.flashPoint
          : flashPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      symbols: freezed == symbols
          ? _self._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signalWord: freezed == signalWord
          ? _self.signalWord
          : signalWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ChemicalDetailItemModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'group')
  String get group;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'type')
  ChemicalDetailType get type;
  @JsonKey(name: 'table')
  TableField get table;
  @JsonKey(name: 'rich_text')
  String? get richText;
  @JsonKey(name: 'sxy')
  ChemicalDetailSxy? get sxy;
  @JsonKey(name: 'synthetic_routes')
  List<ChemicalDetailSyntheticRoutes>? get syntheticRoutes;

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailItemModelCopyWith<ChemicalDetailItemModel> get copyWith =>
      _$ChemicalDetailItemModelCopyWithImpl<ChemicalDetailItemModel>(
          this as ChemicalDetailItemModel, _$identity);

  /// Serializes this ChemicalDetailItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailItemModel'))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('table', table))
      ..add(DiagnosticsProperty('richText', richText))
      ..add(DiagnosticsProperty('sxy', sxy))
      ..add(DiagnosticsProperty('syntheticRoutes', syntheticRoutes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailItemModel &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.richText, richText) ||
                other.richText == richText) &&
            (identical(other.sxy, sxy) || other.sxy == sxy) &&
            const DeepCollectionEquality()
                .equals(other.syntheticRoutes, syntheticRoutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, title, type, table,
      richText, sxy, const DeepCollectionEquality().hash(syntheticRoutes));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailItemModel(group: $group, title: $title, type: $type, table: $table, richText: $richText, sxy: $sxy, syntheticRoutes: $syntheticRoutes)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailItemModelCopyWith<$Res> {
  factory $ChemicalDetailItemModelCopyWith(ChemicalDetailItemModel value,
          $Res Function(ChemicalDetailItemModel) _then) =
      _$ChemicalDetailItemModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'group') String group,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'type') ChemicalDetailType type,
      @JsonKey(name: 'table') TableField table,
      @JsonKey(name: 'rich_text') String? richText,
      @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
      @JsonKey(name: 'synthetic_routes')
      List<ChemicalDetailSyntheticRoutes>? syntheticRoutes});

  $TableFieldCopyWith<$Res> get table;
  $ChemicalDetailSxyCopyWith<$Res>? get sxy;
}

/// @nodoc
class _$ChemicalDetailItemModelCopyWithImpl<$Res>
    implements $ChemicalDetailItemModelCopyWith<$Res> {
  _$ChemicalDetailItemModelCopyWithImpl(this._self, this._then);

  final ChemicalDetailItemModel _self;
  final $Res Function(ChemicalDetailItemModel) _then;

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? title = null,
    Object? type = null,
    Object? table = null,
    Object? richText = freezed,
    Object? sxy = freezed,
    Object? syntheticRoutes = freezed,
  }) {
    return _then(_self.copyWith(
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailType,
      table: null == table
          ? _self.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableField,
      richText: freezed == richText
          ? _self.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as String?,
      sxy: freezed == sxy
          ? _self.sxy
          : sxy // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailSxy?,
      syntheticRoutes: freezed == syntheticRoutes
          ? _self.syntheticRoutes
          : syntheticRoutes // ignore: cast_nullable_to_non_nullable
              as List<ChemicalDetailSyntheticRoutes>?,
    ));
  }

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TableFieldCopyWith<$Res> get table {
    return $TableFieldCopyWith<$Res>(_self.table, (value) {
      return _then(_self.copyWith(table: value));
    });
  }

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChemicalDetailSxyCopyWith<$Res>? get sxy {
    if (_self.sxy == null) {
      return null;
    }

    return $ChemicalDetailSxyCopyWith<$Res>(_self.sxy!, (value) {
      return _then(_self.copyWith(sxy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailItemModel].
extension ChemicalDetailItemModelPatterns on ChemicalDetailItemModel {
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
    TResult Function(_ChemicalDetailItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel() when $default != null:
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
    TResult Function(_ChemicalDetailItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel():
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
    TResult? Function(_ChemicalDetailItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel() when $default != null:
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
            @JsonKey(name: 'group') String group,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'type') ChemicalDetailType type,
            @JsonKey(name: 'table') TableField table,
            @JsonKey(name: 'rich_text') String? richText,
            @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
            @JsonKey(name: 'synthetic_routes')
            List<ChemicalDetailSyntheticRoutes>? syntheticRoutes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel() when $default != null:
        return $default(_that.group, _that.title, _that.type, _that.table,
            _that.richText, _that.sxy, _that.syntheticRoutes);
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
            @JsonKey(name: 'group') String group,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'type') ChemicalDetailType type,
            @JsonKey(name: 'table') TableField table,
            @JsonKey(name: 'rich_text') String? richText,
            @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
            @JsonKey(name: 'synthetic_routes')
            List<ChemicalDetailSyntheticRoutes>? syntheticRoutes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel():
        return $default(_that.group, _that.title, _that.type, _that.table,
            _that.richText, _that.sxy, _that.syntheticRoutes);
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
            @JsonKey(name: 'group') String group,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'type') ChemicalDetailType type,
            @JsonKey(name: 'table') TableField table,
            @JsonKey(name: 'rich_text') String? richText,
            @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
            @JsonKey(name: 'synthetic_routes')
            List<ChemicalDetailSyntheticRoutes>? syntheticRoutes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemModel() when $default != null:
        return $default(_that.group, _that.title, _that.type, _that.table,
            _that.richText, _that.sxy, _that.syntheticRoutes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailItemModel
    with DiagnosticableTreeMixin
    implements ChemicalDetailItemModel {
  const _ChemicalDetailItemModel(
      {@JsonKey(name: 'group') required this.group,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'table') required this.table,
      @JsonKey(name: 'rich_text') this.richText,
      @JsonKey(name: 'sxy') this.sxy,
      @JsonKey(name: 'synthetic_routes')
      final List<ChemicalDetailSyntheticRoutes>? syntheticRoutes})
      : _syntheticRoutes = syntheticRoutes;
  factory _ChemicalDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailItemModelFromJson(json);

  @override
  @JsonKey(name: 'group')
  final String group;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'type')
  final ChemicalDetailType type;
  @override
  @JsonKey(name: 'table')
  final TableField table;
  @override
  @JsonKey(name: 'rich_text')
  final String? richText;
  @override
  @JsonKey(name: 'sxy')
  final ChemicalDetailSxy? sxy;
  final List<ChemicalDetailSyntheticRoutes>? _syntheticRoutes;
  @override
  @JsonKey(name: 'synthetic_routes')
  List<ChemicalDetailSyntheticRoutes>? get syntheticRoutes {
    final value = _syntheticRoutes;
    if (value == null) return null;
    if (_syntheticRoutes is EqualUnmodifiableListView) return _syntheticRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailItemModelCopyWith<_ChemicalDetailItemModel> get copyWith =>
      __$ChemicalDetailItemModelCopyWithImpl<_ChemicalDetailItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailItemModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailItemModel'))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('table', table))
      ..add(DiagnosticsProperty('richText', richText))
      ..add(DiagnosticsProperty('sxy', sxy))
      ..add(DiagnosticsProperty('syntheticRoutes', syntheticRoutes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailItemModel &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.richText, richText) ||
                other.richText == richText) &&
            (identical(other.sxy, sxy) || other.sxy == sxy) &&
            const DeepCollectionEquality()
                .equals(other._syntheticRoutes, _syntheticRoutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, title, type, table,
      richText, sxy, const DeepCollectionEquality().hash(_syntheticRoutes));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailItemModel(group: $group, title: $title, type: $type, table: $table, richText: $richText, sxy: $sxy, syntheticRoutes: $syntheticRoutes)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailItemModelCopyWith<$Res>
    implements $ChemicalDetailItemModelCopyWith<$Res> {
  factory _$ChemicalDetailItemModelCopyWith(_ChemicalDetailItemModel value,
          $Res Function(_ChemicalDetailItemModel) _then) =
      __$ChemicalDetailItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group') String group,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'type') ChemicalDetailType type,
      @JsonKey(name: 'table') TableField table,
      @JsonKey(name: 'rich_text') String? richText,
      @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
      @JsonKey(name: 'synthetic_routes')
      List<ChemicalDetailSyntheticRoutes>? syntheticRoutes});

  @override
  $TableFieldCopyWith<$Res> get table;
  @override
  $ChemicalDetailSxyCopyWith<$Res>? get sxy;
}

/// @nodoc
class __$ChemicalDetailItemModelCopyWithImpl<$Res>
    implements _$ChemicalDetailItemModelCopyWith<$Res> {
  __$ChemicalDetailItemModelCopyWithImpl(this._self, this._then);

  final _ChemicalDetailItemModel _self;
  final $Res Function(_ChemicalDetailItemModel) _then;

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? group = null,
    Object? title = null,
    Object? type = null,
    Object? table = null,
    Object? richText = freezed,
    Object? sxy = freezed,
    Object? syntheticRoutes = freezed,
  }) {
    return _then(_ChemicalDetailItemModel(
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailType,
      table: null == table
          ? _self.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableField,
      richText: freezed == richText
          ? _self.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as String?,
      sxy: freezed == sxy
          ? _self.sxy
          : sxy // ignore: cast_nullable_to_non_nullable
              as ChemicalDetailSxy?,
      syntheticRoutes: freezed == syntheticRoutes
          ? _self._syntheticRoutes
          : syntheticRoutes // ignore: cast_nullable_to_non_nullable
              as List<ChemicalDetailSyntheticRoutes>?,
    ));
  }

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TableFieldCopyWith<$Res> get table {
    return $TableFieldCopyWith<$Res>(_self.table, (value) {
      return _then(_self.copyWith(table: value));
    });
  }

  /// Create a copy of ChemicalDetailItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChemicalDetailSxyCopyWith<$Res>? get sxy {
    if (_self.sxy == null) {
      return null;
    }

    return $ChemicalDetailSxyCopyWith<$Res>(_self.sxy!, (value) {
      return _then(_self.copyWith(sxy: value));
    });
  }
}

/// @nodoc
mixin _$TableField implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TableField'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TableField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableField()';
  }
}

/// @nodoc
class $TableFieldCopyWith<$Res> {
  $TableFieldCopyWith(TableField _, $Res Function(TableField) __);
}

/// Adds pattern-matching-related methods to [TableField].
extension TableFieldPatterns on TableField {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onElseTableField value)? onElse,
    TResult Function(_StringTableField value)? string,
    TResult Function(_ListTableField value)? list,
    TResult Function(_StringListTableField value)? stringList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField() when onElse != null:
        return onElse(_that);
      case _StringTableField() when string != null:
        return string(_that);
      case _ListTableField() when list != null:
        return list(_that);
      case _StringListTableField() when stringList != null:
        return stringList(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_onElseTableField value) onElse,
    required TResult Function(_StringTableField value) string,
    required TResult Function(_ListTableField value) list,
    required TResult Function(_StringListTableField value) stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField():
        return onElse(_that);
      case _StringTableField():
        return string(_that);
      case _ListTableField():
        return list(_that);
      case _StringListTableField():
        return stringList(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onElseTableField value)? onElse,
    TResult? Function(_StringTableField value)? string,
    TResult? Function(_ListTableField value)? list,
    TResult? Function(_StringListTableField value)? stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField() when onElse != null:
        return onElse(_that);
      case _StringTableField() when string != null:
        return string(_that);
      case _ListTableField() when list != null:
        return list(_that);
      case _StringListTableField() when stringList != null:
        return stringList(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? onElse,
    TResult Function(String value)? string,
    TResult Function(List<ChemicalDetailItemTableModel> values)? list,
    TResult Function(List<String> values)? stringList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField() when onElse != null:
        return onElse(_that.value);
      case _StringTableField() when string != null:
        return string(_that.value);
      case _ListTableField() when list != null:
        return list(_that.values);
      case _StringListTableField() when stringList != null:
        return stringList(_that.values);
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
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) onElse,
    required TResult Function(String value) string,
    required TResult Function(List<ChemicalDetailItemTableModel> values) list,
    required TResult Function(List<String> values) stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField():
        return onElse(_that.value);
      case _StringTableField():
        return string(_that.value);
      case _ListTableField():
        return list(_that.values);
      case _StringListTableField():
        return stringList(_that.values);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? onElse,
    TResult? Function(String value)? string,
    TResult? Function(List<ChemicalDetailItemTableModel> values)? list,
    TResult? Function(List<String> values)? stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableField() when onElse != null:
        return onElse(_that.value);
      case _StringTableField() when string != null:
        return string(_that.value);
      case _ListTableField() when list != null:
        return list(_that.values);
      case _StringListTableField() when stringList != null:
        return stringList(_that.values);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _onElseTableField extends TableField with DiagnosticableTreeMixin {
  const _onElseTableField(this.value) : super._();

  final dynamic value;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$onElseTableFieldCopyWith<_onElseTableField> get copyWith =>
      __$onElseTableFieldCopyWithImpl<_onElseTableField>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableField.onElse'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _onElseTableField &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableField.onElse(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$onElseTableFieldCopyWith<$Res>
    implements $TableFieldCopyWith<$Res> {
  factory _$onElseTableFieldCopyWith(
          _onElseTableField value, $Res Function(_onElseTableField) _then) =
      __$onElseTableFieldCopyWithImpl;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$onElseTableFieldCopyWithImpl<$Res>
    implements _$onElseTableFieldCopyWith<$Res> {
  __$onElseTableFieldCopyWithImpl(this._self, this._then);

  final _onElseTableField _self;
  final $Res Function(_onElseTableField) _then;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_onElseTableField(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _StringTableField extends TableField with DiagnosticableTreeMixin {
  const _StringTableField(this.value) : super._();

  final String value;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StringTableFieldCopyWith<_StringTableField> get copyWith =>
      __$StringTableFieldCopyWithImpl<_StringTableField>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableField.string'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StringTableField &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableField.string(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StringTableFieldCopyWith<$Res>
    implements $TableFieldCopyWith<$Res> {
  factory _$StringTableFieldCopyWith(
          _StringTableField value, $Res Function(_StringTableField) _then) =
      __$StringTableFieldCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$StringTableFieldCopyWithImpl<$Res>
    implements _$StringTableFieldCopyWith<$Res> {
  __$StringTableFieldCopyWithImpl(this._self, this._then);

  final _StringTableField _self;
  final $Res Function(_StringTableField) _then;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_StringTableField(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ListTableField extends TableField with DiagnosticableTreeMixin {
  const _ListTableField(final List<ChemicalDetailItemTableModel> values)
      : _values = values,
        super._();

  final List<ChemicalDetailItemTableModel> _values;
  List<ChemicalDetailItemTableModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListTableFieldCopyWith<_ListTableField> get copyWith =>
      __$ListTableFieldCopyWithImpl<_ListTableField>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableField.list'))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListTableField &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableField.list(values: $values)';
  }
}

/// @nodoc
abstract mixin class _$ListTableFieldCopyWith<$Res>
    implements $TableFieldCopyWith<$Res> {
  factory _$ListTableFieldCopyWith(
          _ListTableField value, $Res Function(_ListTableField) _then) =
      __$ListTableFieldCopyWithImpl;
  @useResult
  $Res call({List<ChemicalDetailItemTableModel> values});
}

/// @nodoc
class __$ListTableFieldCopyWithImpl<$Res>
    implements _$ListTableFieldCopyWith<$Res> {
  __$ListTableFieldCopyWithImpl(this._self, this._then);

  final _ListTableField _self;
  final $Res Function(_ListTableField) _then;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
  }) {
    return _then(_ListTableField(
      null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ChemicalDetailItemTableModel>,
    ));
  }
}

/// @nodoc

class _StringListTableField extends TableField with DiagnosticableTreeMixin {
  const _StringListTableField(final List<String> values)
      : _values = values,
        super._();

  final List<String> _values;
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StringListTableFieldCopyWith<_StringListTableField> get copyWith =>
      __$StringListTableFieldCopyWithImpl<_StringListTableField>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableField.stringList'))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StringListTableField &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableField.stringList(values: $values)';
  }
}

/// @nodoc
abstract mixin class _$StringListTableFieldCopyWith<$Res>
    implements $TableFieldCopyWith<$Res> {
  factory _$StringListTableFieldCopyWith(_StringListTableField value,
          $Res Function(_StringListTableField) _then) =
      __$StringListTableFieldCopyWithImpl;
  @useResult
  $Res call({List<String> values});
}

/// @nodoc
class __$StringListTableFieldCopyWithImpl<$Res>
    implements _$StringListTableFieldCopyWith<$Res> {
  __$StringListTableFieldCopyWithImpl(this._self, this._then);

  final _StringListTableField _self;
  final $Res Function(_StringListTableField) _then;

  /// Create a copy of TableField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
  }) {
    return _then(_StringListTableField(
      null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$ChemicalDetailItemTableModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'key')
  String? get key;
  @JsonKey(name: 'value')
  TableValueField get value;

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailItemTableModelCopyWith<ChemicalDetailItemTableModel>
      get copyWith => _$ChemicalDetailItemTableModelCopyWithImpl<
              ChemicalDetailItemTableModel>(
          this as ChemicalDetailItemTableModel, _$identity);

  /// Serializes this ChemicalDetailItemTableModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailItemTableModel'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailItemTableModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailItemTableModel(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailItemTableModelCopyWith<$Res> {
  factory $ChemicalDetailItemTableModelCopyWith(
          ChemicalDetailItemTableModel value,
          $Res Function(ChemicalDetailItemTableModel) _then) =
      _$ChemicalDetailItemTableModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'value') TableValueField value});

  $TableValueFieldCopyWith<$Res> get value;
}

/// @nodoc
class _$ChemicalDetailItemTableModelCopyWithImpl<$Res>
    implements $ChemicalDetailItemTableModelCopyWith<$Res> {
  _$ChemicalDetailItemTableModelCopyWithImpl(this._self, this._then);

  final ChemicalDetailItemTableModel _self;
  final $Res Function(ChemicalDetailItemTableModel) _then;

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as TableValueField,
    ));
  }

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TableValueFieldCopyWith<$Res> get value {
    return $TableValueFieldCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailItemTableModel].
extension ChemicalDetailItemTableModelPatterns on ChemicalDetailItemTableModel {
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
    TResult Function(_ChemicalDetailItemTableModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel() when $default != null:
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
    TResult Function(_ChemicalDetailItemTableModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel():
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
    TResult? Function(_ChemicalDetailItemTableModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'key') String? key,
            @JsonKey(name: 'value') TableValueField value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel() when $default != null:
        return $default(_that.key, _that.value);
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
    TResult Function(@JsonKey(name: 'key') String? key,
            @JsonKey(name: 'value') TableValueField value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel():
        return $default(_that.key, _that.value);
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
    TResult? Function(@JsonKey(name: 'key') String? key,
            @JsonKey(name: 'value') TableValueField value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailItemTableModel() when $default != null:
        return $default(_that.key, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailItemTableModel
    with DiagnosticableTreeMixin
    implements ChemicalDetailItemTableModel {
  const _ChemicalDetailItemTableModel(
      {@JsonKey(name: 'key') this.key,
      @JsonKey(name: 'value') required this.value});
  factory _ChemicalDetailItemTableModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailItemTableModelFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'value')
  final TableValueField value;

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailItemTableModelCopyWith<_ChemicalDetailItemTableModel>
      get copyWith => __$ChemicalDetailItemTableModelCopyWithImpl<
          _ChemicalDetailItemTableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailItemTableModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailItemTableModel'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailItemTableModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailItemTableModel(key: $key, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailItemTableModelCopyWith<$Res>
    implements $ChemicalDetailItemTableModelCopyWith<$Res> {
  factory _$ChemicalDetailItemTableModelCopyWith(
          _ChemicalDetailItemTableModel value,
          $Res Function(_ChemicalDetailItemTableModel) _then) =
      __$ChemicalDetailItemTableModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'value') TableValueField value});

  @override
  $TableValueFieldCopyWith<$Res> get value;
}

/// @nodoc
class __$ChemicalDetailItemTableModelCopyWithImpl<$Res>
    implements _$ChemicalDetailItemTableModelCopyWith<$Res> {
  __$ChemicalDetailItemTableModelCopyWithImpl(this._self, this._then);

  final _ChemicalDetailItemTableModel _self;
  final $Res Function(_ChemicalDetailItemTableModel) _then;

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? value = null,
  }) {
    return _then(_ChemicalDetailItemTableModel(
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as TableValueField,
    ));
  }

  /// Create a copy of ChemicalDetailItemTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TableValueFieldCopyWith<$Res> get value {
    return $TableValueFieldCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc
mixin _$TableValueField implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TableValueField'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TableValueField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableValueField()';
  }
}

/// @nodoc
class $TableValueFieldCopyWith<$Res> {
  $TableValueFieldCopyWith(
      TableValueField _, $Res Function(TableValueField) __);
}

/// Adds pattern-matching-related methods to [TableValueField].
extension TableValueFieldPatterns on TableValueField {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onElseTableValueField value)? onElse,
    TResult Function(_StringTableValueField value)? string,
    TResult Function(_StringListTableValueField value)? stringList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField() when onElse != null:
        return onElse(_that);
      case _StringTableValueField() when string != null:
        return string(_that);
      case _StringListTableValueField() when stringList != null:
        return stringList(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_onElseTableValueField value) onElse,
    required TResult Function(_StringTableValueField value) string,
    required TResult Function(_StringListTableValueField value) stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField():
        return onElse(_that);
      case _StringTableValueField():
        return string(_that);
      case _StringListTableValueField():
        return stringList(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onElseTableValueField value)? onElse,
    TResult? Function(_StringTableValueField value)? string,
    TResult? Function(_StringListTableValueField value)? stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField() when onElse != null:
        return onElse(_that);
      case _StringTableValueField() when string != null:
        return string(_that);
      case _StringListTableValueField() when stringList != null:
        return stringList(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? onElse,
    TResult Function(String value)? string,
    TResult Function(List<String> values)? stringList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField() when onElse != null:
        return onElse(_that.value);
      case _StringTableValueField() when string != null:
        return string(_that.value);
      case _StringListTableValueField() when stringList != null:
        return stringList(_that.values);
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
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) onElse,
    required TResult Function(String value) string,
    required TResult Function(List<String> values) stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField():
        return onElse(_that.value);
      case _StringTableValueField():
        return string(_that.value);
      case _StringListTableValueField():
        return stringList(_that.values);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? onElse,
    TResult? Function(String value)? string,
    TResult? Function(List<String> values)? stringList,
  }) {
    final _that = this;
    switch (_that) {
      case _onElseTableValueField() when onElse != null:
        return onElse(_that.value);
      case _StringTableValueField() when string != null:
        return string(_that.value);
      case _StringListTableValueField() when stringList != null:
        return stringList(_that.values);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _onElseTableValueField extends TableValueField
    with DiagnosticableTreeMixin {
  const _onElseTableValueField(this.value) : super._();

  final dynamic value;

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$onElseTableValueFieldCopyWith<_onElseTableValueField> get copyWith =>
      __$onElseTableValueFieldCopyWithImpl<_onElseTableValueField>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableValueField.onElse'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _onElseTableValueField &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableValueField.onElse(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$onElseTableValueFieldCopyWith<$Res>
    implements $TableValueFieldCopyWith<$Res> {
  factory _$onElseTableValueFieldCopyWith(_onElseTableValueField value,
          $Res Function(_onElseTableValueField) _then) =
      __$onElseTableValueFieldCopyWithImpl;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$onElseTableValueFieldCopyWithImpl<$Res>
    implements _$onElseTableValueFieldCopyWith<$Res> {
  __$onElseTableValueFieldCopyWithImpl(this._self, this._then);

  final _onElseTableValueField _self;
  final $Res Function(_onElseTableValueField) _then;

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_onElseTableValueField(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _StringTableValueField extends TableValueField
    with DiagnosticableTreeMixin {
  const _StringTableValueField(this.value) : super._();

  final String value;

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StringTableValueFieldCopyWith<_StringTableValueField> get copyWith =>
      __$StringTableValueFieldCopyWithImpl<_StringTableValueField>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableValueField.string'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StringTableValueField &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableValueField.string(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StringTableValueFieldCopyWith<$Res>
    implements $TableValueFieldCopyWith<$Res> {
  factory _$StringTableValueFieldCopyWith(_StringTableValueField value,
          $Res Function(_StringTableValueField) _then) =
      __$StringTableValueFieldCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$StringTableValueFieldCopyWithImpl<$Res>
    implements _$StringTableValueFieldCopyWith<$Res> {
  __$StringTableValueFieldCopyWithImpl(this._self, this._then);

  final _StringTableValueField _self;
  final $Res Function(_StringTableValueField) _then;

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_StringTableValueField(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _StringListTableValueField extends TableValueField
    with DiagnosticableTreeMixin {
  const _StringListTableValueField(final List<String> values)
      : _values = values,
        super._();

  final List<String> _values;
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StringListTableValueFieldCopyWith<_StringListTableValueField>
      get copyWith =>
          __$StringListTableValueFieldCopyWithImpl<_StringListTableValueField>(
              this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TableValueField.stringList'))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StringListTableValueField &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableValueField.stringList(values: $values)';
  }
}

/// @nodoc
abstract mixin class _$StringListTableValueFieldCopyWith<$Res>
    implements $TableValueFieldCopyWith<$Res> {
  factory _$StringListTableValueFieldCopyWith(_StringListTableValueField value,
          $Res Function(_StringListTableValueField) _then) =
      __$StringListTableValueFieldCopyWithImpl;
  @useResult
  $Res call({List<String> values});
}

/// @nodoc
class __$StringListTableValueFieldCopyWithImpl<$Res>
    implements _$StringListTableValueFieldCopyWith<$Res> {
  __$StringListTableValueFieldCopyWithImpl(this._self, this._then);

  final _StringListTableValueField _self;
  final $Res Function(_StringListTableValueField) _then;

  /// Create a copy of TableValueField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
  }) {
    return _then(_StringListTableValueField(
      null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$ChemicalDetailSxy implements DiagnosticableTreeMixin {
  @JsonKey(name: 'sy')
  List<Sxy> get sy;
  @JsonKey(name: 'xy')
  List<Sxy> get xy;

  /// Create a copy of ChemicalDetailSxy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailSxyCopyWith<ChemicalDetailSxy> get copyWith =>
      _$ChemicalDetailSxyCopyWithImpl<ChemicalDetailSxy>(
          this as ChemicalDetailSxy, _$identity);

  /// Serializes this ChemicalDetailSxy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSxy'))
      ..add(DiagnosticsProperty('sy', sy))
      ..add(DiagnosticsProperty('xy', xy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailSxy &&
            const DeepCollectionEquality().equals(other.sy, sy) &&
            const DeepCollectionEquality().equals(other.xy, xy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sy),
      const DeepCollectionEquality().hash(xy));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSxy(sy: $sy, xy: $xy)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailSxyCopyWith<$Res> {
  factory $ChemicalDetailSxyCopyWith(
          ChemicalDetailSxy value, $Res Function(ChemicalDetailSxy) _then) =
      _$ChemicalDetailSxyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sy') List<Sxy> sy, @JsonKey(name: 'xy') List<Sxy> xy});
}

/// @nodoc
class _$ChemicalDetailSxyCopyWithImpl<$Res>
    implements $ChemicalDetailSxyCopyWith<$Res> {
  _$ChemicalDetailSxyCopyWithImpl(this._self, this._then);

  final ChemicalDetailSxy _self;
  final $Res Function(ChemicalDetailSxy) _then;

  /// Create a copy of ChemicalDetailSxy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sy = null,
    Object? xy = null,
  }) {
    return _then(_self.copyWith(
      sy: null == sy
          ? _self.sy
          : sy // ignore: cast_nullable_to_non_nullable
              as List<Sxy>,
      xy: null == xy
          ? _self.xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<Sxy>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailSxy].
extension ChemicalDetailSxyPatterns on ChemicalDetailSxy {
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
    TResult Function(_ChemicalDetailSxy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy() when $default != null:
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
    TResult Function(_ChemicalDetailSxy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy():
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
    TResult? Function(_ChemicalDetailSxy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy() when $default != null:
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
    TResult Function(@JsonKey(name: 'sy') List<Sxy> sy,
            @JsonKey(name: 'xy') List<Sxy> xy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy() when $default != null:
        return $default(_that.sy, _that.xy);
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
    TResult Function(@JsonKey(name: 'sy') List<Sxy> sy,
            @JsonKey(name: 'xy') List<Sxy> xy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy():
        return $default(_that.sy, _that.xy);
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
    TResult? Function(@JsonKey(name: 'sy') List<Sxy> sy,
            @JsonKey(name: 'xy') List<Sxy> xy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSxy() when $default != null:
        return $default(_that.sy, _that.xy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailSxy
    with DiagnosticableTreeMixin
    implements ChemicalDetailSxy {
  const _ChemicalDetailSxy(
      {@JsonKey(name: 'sy') required final List<Sxy> sy,
      @JsonKey(name: 'xy') required final List<Sxy> xy})
      : _sy = sy,
        _xy = xy;
  factory _ChemicalDetailSxy.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailSxyFromJson(json);

  final List<Sxy> _sy;
  @override
  @JsonKey(name: 'sy')
  List<Sxy> get sy {
    if (_sy is EqualUnmodifiableListView) return _sy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sy);
  }

  final List<Sxy> _xy;
  @override
  @JsonKey(name: 'xy')
  List<Sxy> get xy {
    if (_xy is EqualUnmodifiableListView) return _xy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_xy);
  }

  /// Create a copy of ChemicalDetailSxy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailSxyCopyWith<_ChemicalDetailSxy> get copyWith =>
      __$ChemicalDetailSxyCopyWithImpl<_ChemicalDetailSxy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailSxyToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSxy'))
      ..add(DiagnosticsProperty('sy', sy))
      ..add(DiagnosticsProperty('xy', xy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailSxy &&
            const DeepCollectionEquality().equals(other._sy, _sy) &&
            const DeepCollectionEquality().equals(other._xy, _xy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sy),
      const DeepCollectionEquality().hash(_xy));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSxy(sy: $sy, xy: $xy)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailSxyCopyWith<$Res>
    implements $ChemicalDetailSxyCopyWith<$Res> {
  factory _$ChemicalDetailSxyCopyWith(
          _ChemicalDetailSxy value, $Res Function(_ChemicalDetailSxy) _then) =
      __$ChemicalDetailSxyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sy') List<Sxy> sy, @JsonKey(name: 'xy') List<Sxy> xy});
}

/// @nodoc
class __$ChemicalDetailSxyCopyWithImpl<$Res>
    implements _$ChemicalDetailSxyCopyWith<$Res> {
  __$ChemicalDetailSxyCopyWithImpl(this._self, this._then);

  final _ChemicalDetailSxy _self;
  final $Res Function(_ChemicalDetailSxy) _then;

  /// Create a copy of ChemicalDetailSxy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sy = null,
    Object? xy = null,
  }) {
    return _then(_ChemicalDetailSxy(
      sy: null == sy
          ? _self._sy
          : sy // ignore: cast_nullable_to_non_nullable
              as List<Sxy>,
      xy: null == xy
          ? _self._xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<Sxy>,
    ));
  }
}

/// @nodoc
mixin _$Sxy implements DiagnosticableTreeMixin {
  @JsonKey(name: 'cas')
  String get cas;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'img')
  String? get img;

  /// Create a copy of Sxy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SxyCopyWith<Sxy> get copyWith =>
      _$SxyCopyWithImpl<Sxy>(this as Sxy, _$identity);

  /// Serializes this Sxy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Sxy'))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('img', img));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sxy &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cas, name, id, img);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Sxy(cas: $cas, name: $name, id: $id, img: $img)';
  }
}

/// @nodoc
abstract mixin class $SxyCopyWith<$Res> {
  factory $SxyCopyWith(Sxy value, $Res Function(Sxy) _then) = _$SxyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'cas') String cas,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img});
}

/// @nodoc
class _$SxyCopyWithImpl<$Res> implements $SxyCopyWith<$Res> {
  _$SxyCopyWithImpl(this._self, this._then);

  final Sxy _self;
  final $Res Function(Sxy) _then;

  /// Create a copy of Sxy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cas = null,
    Object? name = null,
    Object? id = freezed,
    Object? img = freezed,
  }) {
    return _then(_self.copyWith(
      cas: null == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Sxy].
extension SxyPatterns on Sxy {
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
    TResult Function(_Sxy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Sxy() when $default != null:
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
    TResult Function(_Sxy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sxy():
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
    TResult? Function(_Sxy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sxy() when $default != null:
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Sxy() when $default != null:
        return $default(_that.cas, _that.name, _that.id, _that.img);
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sxy():
        return $default(_that.cas, _that.name, _that.id, _that.img);
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Sxy() when $default != null:
        return $default(_that.cas, _that.name, _that.id, _that.img);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Sxy with DiagnosticableTreeMixin implements Sxy {
  const _Sxy(
      {@JsonKey(name: 'cas') required this.cas,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'img') this.img});
  factory _Sxy.fromJson(Map<String, dynamic> json) => _$SxyFromJson(json);

  @override
  @JsonKey(name: 'cas')
  final String cas;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'img')
  final String? img;

  /// Create a copy of Sxy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SxyCopyWith<_Sxy> get copyWith =>
      __$SxyCopyWithImpl<_Sxy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SxyToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Sxy'))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('img', img));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sxy &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cas, name, id, img);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Sxy(cas: $cas, name: $name, id: $id, img: $img)';
  }
}

/// @nodoc
abstract mixin class _$SxyCopyWith<$Res> implements $SxyCopyWith<$Res> {
  factory _$SxyCopyWith(_Sxy value, $Res Function(_Sxy) _then) =
      __$SxyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cas') String cas,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img});
}

/// @nodoc
class __$SxyCopyWithImpl<$Res> implements _$SxyCopyWith<$Res> {
  __$SxyCopyWithImpl(this._self, this._then);

  final _Sxy _self;
  final $Res Function(_Sxy) _then;

  /// Create a copy of Sxy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cas = null,
    Object? name = null,
    Object? id = freezed,
    Object? img = freezed,
  }) {
    return _then(_Sxy(
      cas: null == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ChemicalDetailSyntheticRoutes implements DiagnosticableTreeMixin {
  @JsonKey(name: 'materials')
  List<SyntheticRoutesItem>? get materials;
  @JsonKey(name: 'products')
  List<SyntheticRoutesItem>? get products;
  @JsonKey(name: 'productivity')
  double? get productivity;

  /// Create a copy of ChemicalDetailSyntheticRoutes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalDetailSyntheticRoutesCopyWith<ChemicalDetailSyntheticRoutes>
      get copyWith => _$ChemicalDetailSyntheticRoutesCopyWithImpl<
              ChemicalDetailSyntheticRoutes>(
          this as ChemicalDetailSyntheticRoutes, _$identity);

  /// Serializes this ChemicalDetailSyntheticRoutes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSyntheticRoutes'))
      ..add(DiagnosticsProperty('materials', materials))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('productivity', productivity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalDetailSyntheticRoutes &&
            const DeepCollectionEquality().equals(other.materials, materials) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            (identical(other.productivity, productivity) ||
                other.productivity == productivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(materials),
      const DeepCollectionEquality().hash(products),
      productivity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSyntheticRoutes(materials: $materials, products: $products, productivity: $productivity)';
  }
}

/// @nodoc
abstract mixin class $ChemicalDetailSyntheticRoutesCopyWith<$Res> {
  factory $ChemicalDetailSyntheticRoutesCopyWith(
          ChemicalDetailSyntheticRoutes value,
          $Res Function(ChemicalDetailSyntheticRoutes) _then) =
      _$ChemicalDetailSyntheticRoutesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
      @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
      @JsonKey(name: 'productivity') double? productivity});
}

/// @nodoc
class _$ChemicalDetailSyntheticRoutesCopyWithImpl<$Res>
    implements $ChemicalDetailSyntheticRoutesCopyWith<$Res> {
  _$ChemicalDetailSyntheticRoutesCopyWithImpl(this._self, this._then);

  final ChemicalDetailSyntheticRoutes _self;
  final $Res Function(ChemicalDetailSyntheticRoutes) _then;

  /// Create a copy of ChemicalDetailSyntheticRoutes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = freezed,
    Object? products = freezed,
    Object? productivity = freezed,
  }) {
    return _then(_self.copyWith(
      materials: freezed == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<SyntheticRoutesItem>?,
      products: freezed == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SyntheticRoutesItem>?,
      productivity: freezed == productivity
          ? _self.productivity
          : productivity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalDetailSyntheticRoutes].
extension ChemicalDetailSyntheticRoutesPatterns
    on ChemicalDetailSyntheticRoutes {
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
    TResult Function(_ChemicalDetailSyntheticRoutes value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes() when $default != null:
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
    TResult Function(_ChemicalDetailSyntheticRoutes value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes():
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
    TResult? Function(_ChemicalDetailSyntheticRoutes value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes() when $default != null:
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
            @JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
            @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
            @JsonKey(name: 'productivity') double? productivity)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes() when $default != null:
        return $default(_that.materials, _that.products, _that.productivity);
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
            @JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
            @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
            @JsonKey(name: 'productivity') double? productivity)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes():
        return $default(_that.materials, _that.products, _that.productivity);
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
            @JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
            @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
            @JsonKey(name: 'productivity') double? productivity)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalDetailSyntheticRoutes() when $default != null:
        return $default(_that.materials, _that.products, _that.productivity);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalDetailSyntheticRoutes
    with DiagnosticableTreeMixin
    implements ChemicalDetailSyntheticRoutes {
  const _ChemicalDetailSyntheticRoutes(
      {@JsonKey(name: 'materials') final List<SyntheticRoutesItem>? materials,
      @JsonKey(name: 'products') final List<SyntheticRoutesItem>? products,
      @JsonKey(name: 'productivity') this.productivity})
      : _materials = materials,
        _products = products;
  factory _ChemicalDetailSyntheticRoutes.fromJson(Map<String, dynamic> json) =>
      _$ChemicalDetailSyntheticRoutesFromJson(json);

  final List<SyntheticRoutesItem>? _materials;
  @override
  @JsonKey(name: 'materials')
  List<SyntheticRoutesItem>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SyntheticRoutesItem>? _products;
  @override
  @JsonKey(name: 'products')
  List<SyntheticRoutesItem>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'productivity')
  final double? productivity;

  /// Create a copy of ChemicalDetailSyntheticRoutes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalDetailSyntheticRoutesCopyWith<_ChemicalDetailSyntheticRoutes>
      get copyWith => __$ChemicalDetailSyntheticRoutesCopyWithImpl<
          _ChemicalDetailSyntheticRoutes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalDetailSyntheticRoutesToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalDetailSyntheticRoutes'))
      ..add(DiagnosticsProperty('materials', materials))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('productivity', productivity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalDetailSyntheticRoutes &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.productivity, productivity) ||
                other.productivity == productivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_products),
      productivity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalDetailSyntheticRoutes(materials: $materials, products: $products, productivity: $productivity)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalDetailSyntheticRoutesCopyWith<$Res>
    implements $ChemicalDetailSyntheticRoutesCopyWith<$Res> {
  factory _$ChemicalDetailSyntheticRoutesCopyWith(
          _ChemicalDetailSyntheticRoutes value,
          $Res Function(_ChemicalDetailSyntheticRoutes) _then) =
      __$ChemicalDetailSyntheticRoutesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
      @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
      @JsonKey(name: 'productivity') double? productivity});
}

/// @nodoc
class __$ChemicalDetailSyntheticRoutesCopyWithImpl<$Res>
    implements _$ChemicalDetailSyntheticRoutesCopyWith<$Res> {
  __$ChemicalDetailSyntheticRoutesCopyWithImpl(this._self, this._then);

  final _ChemicalDetailSyntheticRoutes _self;
  final $Res Function(_ChemicalDetailSyntheticRoutes) _then;

  /// Create a copy of ChemicalDetailSyntheticRoutes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? materials = freezed,
    Object? products = freezed,
    Object? productivity = freezed,
  }) {
    return _then(_ChemicalDetailSyntheticRoutes(
      materials: freezed == materials
          ? _self._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<SyntheticRoutesItem>?,
      products: freezed == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SyntheticRoutesItem>?,
      productivity: freezed == productivity
          ? _self.productivity
          : productivity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$SyntheticRoutesItem implements DiagnosticableTreeMixin {
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'cas')
  String? get cas;
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'img')
  String? get img;

  /// Create a copy of SyntheticRoutesItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SyntheticRoutesItemCopyWith<SyntheticRoutesItem> get copyWith =>
      _$SyntheticRoutesItemCopyWithImpl<SyntheticRoutesItem>(
          this as SyntheticRoutesItem, _$identity);

  /// Serializes this SyntheticRoutesItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SyntheticRoutesItem'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('img', img));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SyntheticRoutesItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, cas, id, img);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SyntheticRoutesItem(name: $name, cas: $cas, id: $id, img: $img)';
  }
}

/// @nodoc
abstract mixin class $SyntheticRoutesItemCopyWith<$Res> {
  factory $SyntheticRoutesItemCopyWith(
          SyntheticRoutesItem value, $Res Function(SyntheticRoutesItem) _then) =
      _$SyntheticRoutesItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'cas') String? cas,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img});
}

/// @nodoc
class _$SyntheticRoutesItemCopyWithImpl<$Res>
    implements $SyntheticRoutesItemCopyWith<$Res> {
  _$SyntheticRoutesItemCopyWithImpl(this._self, this._then);

  final SyntheticRoutesItem _self;
  final $Res Function(SyntheticRoutesItem) _then;

  /// Create a copy of SyntheticRoutesItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cas = freezed,
    Object? id = freezed,
    Object? img = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cas: freezed == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SyntheticRoutesItem].
extension SyntheticRoutesItemPatterns on SyntheticRoutesItem {
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
    TResult Function(_SyntheticRoutesItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem() when $default != null:
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
    TResult Function(_SyntheticRoutesItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem():
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
    TResult? Function(_SyntheticRoutesItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem() when $default != null:
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
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem() when $default != null:
        return $default(_that.name, _that.cas, _that.id, _that.img);
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
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem():
        return $default(_that.name, _that.cas, _that.id, _that.img);
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
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'cas') String? cas,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'img') String? img)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyntheticRoutesItem() when $default != null:
        return $default(_that.name, _that.cas, _that.id, _that.img);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SyntheticRoutesItem
    with DiagnosticableTreeMixin
    implements SyntheticRoutesItem {
  const _SyntheticRoutesItem(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'cas') this.cas,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'img') this.img});
  factory _SyntheticRoutesItem.fromJson(Map<String, dynamic> json) =>
      _$SyntheticRoutesItemFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'cas')
  final String? cas;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'img')
  final String? img;

  /// Create a copy of SyntheticRoutesItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SyntheticRoutesItemCopyWith<_SyntheticRoutesItem> get copyWith =>
      __$SyntheticRoutesItemCopyWithImpl<_SyntheticRoutesItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SyntheticRoutesItemToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SyntheticRoutesItem'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('img', img));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SyntheticRoutesItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, cas, id, img);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SyntheticRoutesItem(name: $name, cas: $cas, id: $id, img: $img)';
  }
}

/// @nodoc
abstract mixin class _$SyntheticRoutesItemCopyWith<$Res>
    implements $SyntheticRoutesItemCopyWith<$Res> {
  factory _$SyntheticRoutesItemCopyWith(_SyntheticRoutesItem value,
          $Res Function(_SyntheticRoutesItem) _then) =
      __$SyntheticRoutesItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'cas') String? cas,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img});
}

/// @nodoc
class __$SyntheticRoutesItemCopyWithImpl<$Res>
    implements _$SyntheticRoutesItemCopyWith<$Res> {
  __$SyntheticRoutesItemCopyWithImpl(this._self, this._then);

  final _SyntheticRoutesItem _self;
  final $Res Function(_SyntheticRoutesItem) _then;

  /// Create a copy of SyntheticRoutesItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? cas = freezed,
    Object? id = freezed,
    Object? img = freezed,
  }) {
    return _then(_SyntheticRoutesItem(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cas: freezed == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
