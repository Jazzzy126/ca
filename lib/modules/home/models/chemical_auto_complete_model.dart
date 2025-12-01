import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chemical_auto_complete_model.freezed.dart';

part 'chemical_auto_complete_model.g.dart';

@freezed
abstract class ChemicalAutoCompleteModel with _$ChemicalAutoCompleteModel {
  const factory ChemicalAutoCompleteModel({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'highlight') required String highlight,
  }) = _ChemicalAutoCompleteModel;

  factory ChemicalAutoCompleteModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalAutoCompleteModelFromJson(json);
}
