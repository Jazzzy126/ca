// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chemical_search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChemicalSearchNotifier)
const chemicalSearchProvider = ChemicalSearchNotifierProvider._();

final class ChemicalSearchNotifierProvider extends $AsyncNotifierProvider<
    ChemicalSearchNotifier, ChemicalSearchModel?> {
  const ChemicalSearchNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'chemicalSearchProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$chemicalSearchNotifierHash();

  @$internal
  @override
  ChemicalSearchNotifier create() => ChemicalSearchNotifier();
}

String _$chemicalSearchNotifierHash() =>
    r'dc1362a96d305d1d1b0cd6923c30f3eb672730b2';

abstract class _$ChemicalSearchNotifier
    extends $AsyncNotifier<ChemicalSearchModel?> {
  FutureOr<ChemicalSearchModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<AsyncValue<ChemicalSearchModel?>, ChemicalSearchModel?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ChemicalSearchModel?>, ChemicalSearchModel?>,
        AsyncValue<ChemicalSearchModel?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
