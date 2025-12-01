import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chemical_search_model.freezed.dart';

part 'chemical_search_model.g.dart';

@freezed
abstract class ChemicalSearchModel with _$ChemicalSearchModel {
  const factory ChemicalSearchModel({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'current') required int current,
    @JsonKey(name: 'size') required int size,
    @JsonKey(name: 'rows') required List<ChemicalSearchRowModel> rows,
  }) = _ChemicalSearchModel;

  factory ChemicalSearchModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalSearchModelFromJson(json);
}

@freezed
abstract class ChemicalSearchRowModel with _$ChemicalSearchRowModel {
  const factory ChemicalSearchRowModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'cas') required String cas,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'en_name') required String enName,
    @JsonKey(name: 'struct_img_url', defaultValue: '')
    required String structImgUrl,
    @JsonKey(name: 'molecular_weight', defaultValue: 0)
    required double molecularWeight,
    @JsonKey(name: 'molecular_formula', defaultValue: '')
    required String molecularFormula,
  }) = _ChemicalSearchRowModel;

  factory ChemicalSearchRowModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalSearchRowModelFromJson(json);
}
