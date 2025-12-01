// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chemical_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChemicalDetailModel _$ChemicalDetailModelFromJson(Map<String, dynamic> json) =>
    _ChemicalDetailModel(
      id: (json['id'] as num).toInt(),
      summary: ChemicalDetailSummaryModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      detail: (json['detail'] as List<dynamic>)
          .map((e) =>
              ChemicalDetailItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChemicalDetailModelToJson(
        _ChemicalDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.summary,
      'detail': instance.detail,
    };

_ChemicalDetailSummaryModel _$ChemicalDetailSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _ChemicalDetailSummaryModel(
      cas: json['cas'] as String?,
      name: json['name'] as String?,
      enName: json['en_name'] as String?,
      img: json['img'] as String?,
      structImgUrl: json['struct_img_url'] as String?,
      molecularWeight: json['molecular_weight'] as String?,
      molecularFormula: json['molecular_formula'] as String?,
      density: json['density'] as String?,
      boilingPoint: json['boiling_point'] as String?,
      fusingPoint: json['fusing_point'] as String?,
      flashPoint: json['flash_point'] as String?,
      symbols:
          (json['symbols'] as List<dynamic>?)?.map((e) => e as String).toList(),
      signalWord: json['signal_word'] as String?,
    );

Map<String, dynamic> _$ChemicalDetailSummaryModelToJson(
        _ChemicalDetailSummaryModel instance) =>
    <String, dynamic>{
      'cas': instance.cas,
      'name': instance.name,
      'en_name': instance.enName,
      'img': instance.img,
      'struct_img_url': instance.structImgUrl,
      'molecular_weight': instance.molecularWeight,
      'molecular_formula': instance.molecularFormula,
      'density': instance.density,
      'boiling_point': instance.boilingPoint,
      'fusing_point': instance.fusingPoint,
      'flash_point': instance.flashPoint,
      'symbols': instance.symbols,
      'signal_word': instance.signalWord,
    };

_ChemicalDetailItemModel _$ChemicalDetailItemModelFromJson(
        Map<String, dynamic> json) =>
    _ChemicalDetailItemModel(
      group: json['group'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$ChemicalDetailTypeEnumMap, json['type']),
      table: TableField.fromJson(json['table']),
      richText: json['rich_text'] as String?,
      sxy: json['sxy'] == null
          ? null
          : ChemicalDetailSxy.fromJson(json['sxy'] as Map<String, dynamic>),
      syntheticRoutes: (json['synthetic_routes'] as List<dynamic>?)
          ?.map((e) =>
              ChemicalDetailSyntheticRoutes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChemicalDetailItemModelToJson(
        _ChemicalDetailItemModel instance) =>
    <String, dynamic>{
      'group': instance.group,
      'title': instance.title,
      'type': _$ChemicalDetailTypeEnumMap[instance.type]!,
      'table': instance.table,
      'rich_text': instance.richText,
      'sxy': instance.sxy,
      'synthetic_routes': instance.syntheticRoutes,
    };

const _$ChemicalDetailTypeEnumMap = {
  ChemicalDetailType.table: 'table',
  ChemicalDetailType.syntheticRoutes: 'synthetic-routes',
  ChemicalDetailType.sxy: 'sxy',
  ChemicalDetailType.richText: 'rich-text',
};

_ChemicalDetailItemTableModel _$ChemicalDetailItemTableModelFromJson(
        Map<String, dynamic> json) =>
    _ChemicalDetailItemTableModel(
      key: json['key'] as String?,
      value: TableValueField.fromJson(json['value']),
    );

Map<String, dynamic> _$ChemicalDetailItemTableModelToJson(
        _ChemicalDetailItemTableModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_ChemicalDetailSxy _$ChemicalDetailSxyFromJson(Map<String, dynamic> json) =>
    _ChemicalDetailSxy(
      sy: (json['sy'] as List<dynamic>)
          .map((e) => Sxy.fromJson(e as Map<String, dynamic>))
          .toList(),
      xy: (json['xy'] as List<dynamic>)
          .map((e) => Sxy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChemicalDetailSxyToJson(_ChemicalDetailSxy instance) =>
    <String, dynamic>{
      'sy': instance.sy,
      'xy': instance.xy,
    };

_Sxy _$SxyFromJson(Map<String, dynamic> json) => _Sxy(
      cas: json['cas'] as String,
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt(),
      img: json['img'] as String?,
    );

Map<String, dynamic> _$SxyToJson(_Sxy instance) => <String, dynamic>{
      'cas': instance.cas,
      'name': instance.name,
      'id': instance.id,
      'img': instance.img,
    };

_ChemicalDetailSyntheticRoutes _$ChemicalDetailSyntheticRoutesFromJson(
        Map<String, dynamic> json) =>
    _ChemicalDetailSyntheticRoutes(
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => SyntheticRoutesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => SyntheticRoutesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      productivity: (json['productivity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ChemicalDetailSyntheticRoutesToJson(
        _ChemicalDetailSyntheticRoutes instance) =>
    <String, dynamic>{
      'materials': instance.materials,
      'products': instance.products,
      'productivity': instance.productivity,
    };

_SyntheticRoutesItem _$SyntheticRoutesItemFromJson(Map<String, dynamic> json) =>
    _SyntheticRoutesItem(
      name: json['name'] as String?,
      cas: json['cas'] as String?,
      id: (json['id'] as num?)?.toInt(),
      img: json['img'] as String?,
    );

Map<String, dynamic> _$SyntheticRoutesItemToJson(
        _SyntheticRoutesItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cas': instance.cas,
      'id': instance.id,
      'img': instance.img,
    };
