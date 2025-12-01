// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chemical_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChemicalSearchModel _$ChemicalSearchModelFromJson(Map<String, dynamic> json) =>
    _ChemicalSearchModel(
      total: (json['total'] as num).toInt(),
      current: (json['current'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      rows: (json['rows'] as List<dynamic>)
          .map(
              (e) => ChemicalSearchRowModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChemicalSearchModelToJson(
        _ChemicalSearchModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'current': instance.current,
      'size': instance.size,
      'rows': instance.rows,
    };

_ChemicalSearchRowModel _$ChemicalSearchRowModelFromJson(
        Map<String, dynamic> json) =>
    _ChemicalSearchRowModel(
      id: (json['id'] as num).toInt(),
      cas: json['cas'] as String,
      name: json['name'] as String,
      enName: json['en_name'] as String,
      structImgUrl: json['struct_img_url'] as String? ?? '',
      molecularWeight: (json['molecular_weight'] as num?)?.toDouble() ?? 0,
      molecularFormula: json['molecular_formula'] as String? ?? '',
    );

Map<String, dynamic> _$ChemicalSearchRowModelToJson(
        _ChemicalSearchRowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cas': instance.cas,
      'name': instance.name,
      'en_name': instance.enName,
      'struct_img_url': instance.structImgUrl,
      'molecular_weight': instance.molecularWeight,
      'molecular_formula': instance.molecularFormula,
    };
