// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chemical_search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChemicalSearchParams _$ChemicalSearchParamsFromJson(
        Map<String, dynamic> json) =>
    _ChemicalSearchParams(
      content: json['content'] as String?,
      molecularWeight: json['molecular_weight'] as String?,
      density: json['density'] as String?,
      fusionPoint: json['fusion_point'] as String?,
      boilingPoint: json['boiling_point'] as String?,
      flashPoint: json['flash_point'] as String?,
      current: (json['current'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChemicalSearchParamsToJson(
        _ChemicalSearchParams instance) =>
    <String, dynamic>{
      'content': instance.content,
      'molecular_weight': instance.molecularWeight,
      'density': instance.density,
      'fusion_point': instance.fusionPoint,
      'boiling_point': instance.boilingPoint,
      'flash_point': instance.flashPoint,
      'current': instance.current,
      'size': instance.size,
    };
