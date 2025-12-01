import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chemistry_auto_complete.freezed.dart';

part 'chemistry_auto_complete.g.dart';

@freezed
abstract class ChemistryAutoComplete with _$ChemistryAutoComplete {
  const factory ChemistryAutoComplete({
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'a') String? a,
    @JsonKey(name: 'b') String? b,
    @JsonKey(name: 'c') String? c,
    @JsonKey(name: 'd') String? d,
    @JsonKey(name: 'e') String? e,
  }) = _ChemistryAutoComplete;

  factory ChemistryAutoComplete.fromJson(Map<String, Object?> json) =>
      _$ChemistryAutoCompleteFromJson(json);
}
