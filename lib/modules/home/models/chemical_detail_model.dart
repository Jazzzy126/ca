import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chemical_detail_model.freezed.dart';

part 'chemical_detail_model.g.dart';

@freezed
abstract class ChemicalDetailModel with _$ChemicalDetailModel {
  const factory ChemicalDetailModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'summary') required ChemicalDetailSummaryModel summary,
    @JsonKey(name: 'detail') required List<ChemicalDetailItemModel> detail,
  }) = _ChemicalDetailModel;

  factory ChemicalDetailModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailModelFromJson(json);
}

@freezed
abstract class ChemicalDetailSummaryModel with _$ChemicalDetailSummaryModel {
  const factory ChemicalDetailSummaryModel({
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
    @JsonKey(name: 'signal_word') String? signalWord,
  }) = _ChemicalDetailSummaryModel;

  factory ChemicalDetailSummaryModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailSummaryModelFromJson(json);
}

enum ChemicalDetailType {
  @JsonValue('table')
  table,
  @JsonValue('synthetic-routes')
  syntheticRoutes,
  @JsonValue('sxy')
  sxy,
  @JsonValue('rich-text')
  richText,
}

@freezed
abstract class ChemicalDetailItemModel with _$ChemicalDetailItemModel {
  const factory ChemicalDetailItemModel({
    @JsonKey(name: 'group') required String group,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'type') required ChemicalDetailType type,
    @JsonKey(name: 'table') required TableField table,
    @JsonKey(name: 'rich_text') String? richText,
    @JsonKey(name: 'sxy') ChemicalDetailSxy? sxy,
    @JsonKey(name: 'synthetic_routes') List<ChemicalDetailSyntheticRoutes>? syntheticRoutes,
  }) = _ChemicalDetailItemModel;

  factory ChemicalDetailItemModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailItemModelFromJson(json);
}

@freezed
abstract class TableField with _$TableField {
  const TableField._();

  const factory TableField.onElse(dynamic value) = _onElseTableField;

  const factory TableField.string(String value) = _StringTableField;

  const factory TableField.list(List<ChemicalDetailItemTableModel> values) =
      _ListTableField;

  const factory TableField.stringList(List<String> values) =
      _StringListTableField;

  factory TableField.fromJson(dynamic json) {
    if (json is String) {
      return TableField.string(json);
    }

    if (json is List) {
      if (json.every((e) => e is String)) {
        return TableField.stringList(json.cast<String>());
      } else {
        return TableField.list(
          json
              .map((item) => ChemicalDetailItemTableModel.fromJson(item))
              .toList(),
        );
      }
    }

    return TableField.onElse(json);
  }

  dynamic toJson() => when(
        stringList: (v) => v,
        string: (v) => v,
        list: (v) => v,
        onElse: (v) => v,
      );
}

@freezed
abstract class ChemicalDetailItemTableModel
    with _$ChemicalDetailItemTableModel {
  const factory ChemicalDetailItemTableModel({
    @JsonKey(name: 'key') String? key,
    @JsonKey(name: 'value') required TableValueField value,
  }) = _ChemicalDetailItemTableModel;

  factory ChemicalDetailItemTableModel.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailItemTableModelFromJson(json);
}

@freezed
abstract class TableValueField with _$TableValueField {
  const TableValueField._();

  const factory TableValueField.onElse(dynamic value) = _onElseTableValueField;

  const factory TableValueField.string(String value) = _StringTableValueField;

  const factory TableValueField.stringList(List<String> values) =
      _StringListTableValueField;

  factory TableValueField.fromJson(dynamic json) {
    if (json is String) {
      return TableValueField.string(json);
    }

    if (json is List) {
      return TableValueField.stringList(json.cast<String>());
    }

    return TableValueField.onElse(json);
  }

  dynamic toJson() => when(
        stringList: (v) => v,
        string: (v) => v,
        onElse: (v) => v,
      );
}

@freezed
abstract class ChemicalDetailSxy with _$ChemicalDetailSxy {
  const factory ChemicalDetailSxy({
    @JsonKey(name: 'sy') required List<Sxy> sy,
    @JsonKey(name: 'xy') required List<Sxy> xy,
  }) = _ChemicalDetailSxy;

  factory ChemicalDetailSxy.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailSxyFromJson(json);
}

@freezed
abstract class Sxy with _$Sxy {
  const factory Sxy({
    @JsonKey(name: 'cas') required String cas,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'img') String? img,
  }) = _Sxy;

  factory Sxy.fromJson(Map<String, Object?> json) => _$SxyFromJson(json);
}


@freezed
abstract class ChemicalDetailSyntheticRoutes
    with _$ChemicalDetailSyntheticRoutes {
  const factory ChemicalDetailSyntheticRoutes({
    @JsonKey(name: 'materials') List<SyntheticRoutesItem>? materials,
    @JsonKey(name: 'products') List<SyntheticRoutesItem>? products,
    @JsonKey(name: 'productivity') double? productivity,
  }) = _ChemicalDetailSyntheticRoutes;

  factory ChemicalDetailSyntheticRoutes.fromJson(Map<String, Object?> json) =>
      _$ChemicalDetailSyntheticRoutesFromJson(json);
}

@freezed
abstract class SyntheticRoutesItem with _$SyntheticRoutesItem {
  const factory SyntheticRoutesItem({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'cas') String? cas,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'img') String? img,
  }) = _SyntheticRoutesItem;

  factory SyntheticRoutesItem.fromJson(Map<String, Object?> json) =>
      _$SyntheticRoutesItemFromJson(json);
}

