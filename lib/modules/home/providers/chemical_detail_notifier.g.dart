// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chemical_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChemicalDetailNotifier)
const chemicalDetailProvider = ChemicalDetailNotifierProvider._();

final class ChemicalDetailNotifierProvider extends $AsyncNotifierProvider<
    ChemicalDetailNotifier, ChemicalDetailModel?> {
  const ChemicalDetailNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'chemicalDetailProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$chemicalDetailNotifierHash();

  @$internal
  @override
  ChemicalDetailNotifier create() => ChemicalDetailNotifier();
}

String _$chemicalDetailNotifierHash() =>
    r'85cdc88af76ce8be98830a3583ddff96300f57f2';

abstract class _$ChemicalDetailNotifier
    extends $AsyncNotifier<ChemicalDetailModel?> {
  FutureOr<ChemicalDetailModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<AsyncValue<ChemicalDetailModel?>, ChemicalDetailModel?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ChemicalDetailModel?>, ChemicalDetailModel?>,
        AsyncValue<ChemicalDetailModel?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
