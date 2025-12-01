// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemical_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChemicalSearchModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'total')
  int get total;
  @JsonKey(name: 'current')
  int get current;
  @JsonKey(name: 'size')
  int get size;
  @JsonKey(name: 'rows')
  List<ChemicalSearchRowModel> get rows;

  /// Create a copy of ChemicalSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalSearchModelCopyWith<ChemicalSearchModel> get copyWith =>
      _$ChemicalSearchModelCopyWithImpl<ChemicalSearchModel>(
          this as ChemicalSearchModel, _$identity);

  /// Serializes this ChemicalSearchModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchModel'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('rows', rows));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalSearchModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, current, size,
      const DeepCollectionEquality().hash(rows));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchModel(total: $total, current: $current, size: $size, rows: $rows)';
  }
}

/// @nodoc
abstract mixin class $ChemicalSearchModelCopyWith<$Res> {
  factory $ChemicalSearchModelCopyWith(
          ChemicalSearchModel value, $Res Function(ChemicalSearchModel) _then) =
      _$ChemicalSearchModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'current') int current,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'rows') List<ChemicalSearchRowModel> rows});
}

/// @nodoc
class _$ChemicalSearchModelCopyWithImpl<$Res>
    implements $ChemicalSearchModelCopyWith<$Res> {
  _$ChemicalSearchModelCopyWithImpl(this._self, this._then);

  final ChemicalSearchModel _self;
  final $Res Function(ChemicalSearchModel) _then;

  /// Create a copy of ChemicalSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? current = null,
    Object? size = null,
    Object? rows = null,
  }) {
    return _then(_self.copyWith(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _self.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<ChemicalSearchRowModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalSearchModel].
extension ChemicalSearchModelPatterns on ChemicalSearchModel {
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
    TResult Function(_ChemicalSearchModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel() when $default != null:
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
    TResult Function(_ChemicalSearchModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel():
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
    TResult? Function(_ChemicalSearchModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel() when $default != null:
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
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'current') int current,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'rows') List<ChemicalSearchRowModel> rows)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel() when $default != null:
        return $default(_that.total, _that.current, _that.size, _that.rows);
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
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'current') int current,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'rows') List<ChemicalSearchRowModel> rows)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel():
        return $default(_that.total, _that.current, _that.size, _that.rows);
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
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'current') int current,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'rows') List<ChemicalSearchRowModel> rows)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchModel() when $default != null:
        return $default(_that.total, _that.current, _that.size, _that.rows);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalSearchModel
    with DiagnosticableTreeMixin
    implements ChemicalSearchModel {
  const _ChemicalSearchModel(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'current') required this.current,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'rows') required final List<ChemicalSearchRowModel> rows})
      : _rows = rows;
  factory _ChemicalSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalSearchModelFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'current')
  final int current;
  @override
  @JsonKey(name: 'size')
  final int size;
  final List<ChemicalSearchRowModel> _rows;
  @override
  @JsonKey(name: 'rows')
  List<ChemicalSearchRowModel> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  /// Create a copy of ChemicalSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalSearchModelCopyWith<_ChemicalSearchModel> get copyWith =>
      __$ChemicalSearchModelCopyWithImpl<_ChemicalSearchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalSearchModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchModel'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('rows', rows));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalSearchModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, current, size,
      const DeepCollectionEquality().hash(_rows));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchModel(total: $total, current: $current, size: $size, rows: $rows)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalSearchModelCopyWith<$Res>
    implements $ChemicalSearchModelCopyWith<$Res> {
  factory _$ChemicalSearchModelCopyWith(_ChemicalSearchModel value,
          $Res Function(_ChemicalSearchModel) _then) =
      __$ChemicalSearchModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'current') int current,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'rows') List<ChemicalSearchRowModel> rows});
}

/// @nodoc
class __$ChemicalSearchModelCopyWithImpl<$Res>
    implements _$ChemicalSearchModelCopyWith<$Res> {
  __$ChemicalSearchModelCopyWithImpl(this._self, this._then);

  final _ChemicalSearchModel _self;
  final $Res Function(_ChemicalSearchModel) _then;

  /// Create a copy of ChemicalSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = null,
    Object? current = null,
    Object? size = null,
    Object? rows = null,
  }) {
    return _then(_ChemicalSearchModel(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<ChemicalSearchRowModel>,
    ));
  }
}

/// @nodoc
mixin _$ChemicalSearchRowModel implements DiagnosticableTreeMixin {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'cas')
  String get cas;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'en_name')
  String get enName;
  @JsonKey(name: 'struct_img_url', defaultValue: '')
  String get structImgUrl;
  @JsonKey(name: 'molecular_weight', defaultValue: 0)
  double get molecularWeight;
  @JsonKey(name: 'molecular_formula', defaultValue: '')
  String get molecularFormula;

  /// Create a copy of ChemicalSearchRowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChemicalSearchRowModelCopyWith<ChemicalSearchRowModel> get copyWith =>
      _$ChemicalSearchRowModelCopyWithImpl<ChemicalSearchRowModel>(
          this as ChemicalSearchRowModel, _$identity);

  /// Serializes this ChemicalSearchRowModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchRowModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('structImgUrl', structImgUrl))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('molecularFormula', molecularFormula));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChemicalSearchRowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.structImgUrl, structImgUrl) ||
                other.structImgUrl == structImgUrl) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, cas, name, enName,
      structImgUrl, molecularWeight, molecularFormula);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchRowModel(id: $id, cas: $cas, name: $name, enName: $enName, structImgUrl: $structImgUrl, molecularWeight: $molecularWeight, molecularFormula: $molecularFormula)';
  }
}

/// @nodoc
abstract mixin class $ChemicalSearchRowModelCopyWith<$Res> {
  factory $ChemicalSearchRowModelCopyWith(ChemicalSearchRowModel value,
          $Res Function(ChemicalSearchRowModel) _then) =
      _$ChemicalSearchRowModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cas') String cas,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'en_name') String enName,
      @JsonKey(name: 'struct_img_url', defaultValue: '') String structImgUrl,
      @JsonKey(name: 'molecular_weight', defaultValue: 0)
      double molecularWeight,
      @JsonKey(name: 'molecular_formula', defaultValue: '')
      String molecularFormula});
}

/// @nodoc
class _$ChemicalSearchRowModelCopyWithImpl<$Res>
    implements $ChemicalSearchRowModelCopyWith<$Res> {
  _$ChemicalSearchRowModelCopyWithImpl(this._self, this._then);

  final ChemicalSearchRowModel _self;
  final $Res Function(ChemicalSearchRowModel) _then;

  /// Create a copy of ChemicalSearchRowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cas = null,
    Object? name = null,
    Object? enName = null,
    Object? structImgUrl = null,
    Object? molecularWeight = null,
    Object? molecularFormula = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cas: null == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _self.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      structImgUrl: null == structImgUrl
          ? _self.structImgUrl
          : structImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      molecularWeight: null == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as double,
      molecularFormula: null == molecularFormula
          ? _self.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChemicalSearchRowModel].
extension ChemicalSearchRowModelPatterns on ChemicalSearchRowModel {
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
    TResult Function(_ChemicalSearchRowModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel() when $default != null:
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
    TResult Function(_ChemicalSearchRowModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel():
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
    TResult? Function(_ChemicalSearchRowModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel() when $default != null:
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'en_name') String enName,
            @JsonKey(name: 'struct_img_url', defaultValue: '')
            String structImgUrl,
            @JsonKey(name: 'molecular_weight', defaultValue: 0)
            double molecularWeight,
            @JsonKey(name: 'molecular_formula', defaultValue: '')
            String molecularFormula)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel() when $default != null:
        return $default(_that.id, _that.cas, _that.name, _that.enName,
            _that.structImgUrl, _that.molecularWeight, _that.molecularFormula);
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'en_name') String enName,
            @JsonKey(name: 'struct_img_url', defaultValue: '')
            String structImgUrl,
            @JsonKey(name: 'molecular_weight', defaultValue: 0)
            double molecularWeight,
            @JsonKey(name: 'molecular_formula', defaultValue: '')
            String molecularFormula)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel():
        return $default(_that.id, _that.cas, _that.name, _that.enName,
            _that.structImgUrl, _that.molecularWeight, _that.molecularFormula);
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
            @JsonKey(name: 'cas') String cas,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'en_name') String enName,
            @JsonKey(name: 'struct_img_url', defaultValue: '')
            String structImgUrl,
            @JsonKey(name: 'molecular_weight', defaultValue: 0)
            double molecularWeight,
            @JsonKey(name: 'molecular_formula', defaultValue: '')
            String molecularFormula)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChemicalSearchRowModel() when $default != null:
        return $default(_that.id, _that.cas, _that.name, _that.enName,
            _that.structImgUrl, _that.molecularWeight, _that.molecularFormula);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChemicalSearchRowModel
    with DiagnosticableTreeMixin
    implements ChemicalSearchRowModel {
  const _ChemicalSearchRowModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'cas') required this.cas,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'en_name') required this.enName,
      @JsonKey(name: 'struct_img_url', defaultValue: '')
      required this.structImgUrl,
      @JsonKey(name: 'molecular_weight', defaultValue: 0)
      required this.molecularWeight,
      @JsonKey(name: 'molecular_formula', defaultValue: '')
      required this.molecularFormula});
  factory _ChemicalSearchRowModel.fromJson(Map<String, dynamic> json) =>
      _$ChemicalSearchRowModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'cas')
  final String cas;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'en_name')
  final String enName;
  @override
  @JsonKey(name: 'struct_img_url', defaultValue: '')
  final String structImgUrl;
  @override
  @JsonKey(name: 'molecular_weight', defaultValue: 0)
  final double molecularWeight;
  @override
  @JsonKey(name: 'molecular_formula', defaultValue: '')
  final String molecularFormula;

  /// Create a copy of ChemicalSearchRowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChemicalSearchRowModelCopyWith<_ChemicalSearchRowModel> get copyWith =>
      __$ChemicalSearchRowModelCopyWithImpl<_ChemicalSearchRowModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChemicalSearchRowModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ChemicalSearchRowModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cas', cas))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('structImgUrl', structImgUrl))
      ..add(DiagnosticsProperty('molecularWeight', molecularWeight))
      ..add(DiagnosticsProperty('molecularFormula', molecularFormula));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChemicalSearchRowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cas, cas) || other.cas == cas) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.structImgUrl, structImgUrl) ||
                other.structImgUrl == structImgUrl) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, cas, name, enName,
      structImgUrl, molecularWeight, molecularFormula);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChemicalSearchRowModel(id: $id, cas: $cas, name: $name, enName: $enName, structImgUrl: $structImgUrl, molecularWeight: $molecularWeight, molecularFormula: $molecularFormula)';
  }
}

/// @nodoc
abstract mixin class _$ChemicalSearchRowModelCopyWith<$Res>
    implements $ChemicalSearchRowModelCopyWith<$Res> {
  factory _$ChemicalSearchRowModelCopyWith(_ChemicalSearchRowModel value,
          $Res Function(_ChemicalSearchRowModel) _then) =
      __$ChemicalSearchRowModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cas') String cas,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'en_name') String enName,
      @JsonKey(name: 'struct_img_url', defaultValue: '') String structImgUrl,
      @JsonKey(name: 'molecular_weight', defaultValue: 0)
      double molecularWeight,
      @JsonKey(name: 'molecular_formula', defaultValue: '')
      String molecularFormula});
}

/// @nodoc
class __$ChemicalSearchRowModelCopyWithImpl<$Res>
    implements _$ChemicalSearchRowModelCopyWith<$Res> {
  __$ChemicalSearchRowModelCopyWithImpl(this._self, this._then);

  final _ChemicalSearchRowModel _self;
  final $Res Function(_ChemicalSearchRowModel) _then;

  /// Create a copy of ChemicalSearchRowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? cas = null,
    Object? name = null,
    Object? enName = null,
    Object? structImgUrl = null,
    Object? molecularWeight = null,
    Object? molecularFormula = null,
  }) {
    return _then(_ChemicalSearchRowModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cas: null == cas
          ? _self.cas
          : cas // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _self.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      structImgUrl: null == structImgUrl
          ? _self.structImgUrl
          : structImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      molecularWeight: null == molecularWeight
          ? _self.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as double,
      molecularFormula: null == molecularFormula
          ? _self.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
