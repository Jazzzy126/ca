import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chemical_search_params.freezed.dart';

part 'chemical_search_params.g.dart';

@freezed
abstract class ChemicalSearchParams with _$ChemicalSearchParams {
  const factory ChemicalSearchParams({
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'molecular_weight') String? molecularWeight,
    @JsonKey(name: 'density') String? density,
    @JsonKey(name: 'fusion_point') String? fusionPoint,
    @JsonKey(name: 'boiling_point') String? boilingPoint,
    @JsonKey(name: 'flash_point') String? flashPoint,
    @JsonKey(name: 'current') int? current,
    @JsonKey(name: 'size') int? size,
  }) = _ChemicalSearchParams;

  factory ChemicalSearchParams.fromJson(Map<String, Object?> json) =>
      _$ChemicalSearchParamsFromJson(json);
}
