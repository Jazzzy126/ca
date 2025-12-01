// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthInfoNotifier)
const authInfoProvider = AuthInfoNotifierProvider._();

final class AuthInfoNotifierProvider
    extends $AsyncNotifierProvider<AuthInfoNotifier, AuthInfoModel?> {
  const AuthInfoNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authInfoProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authInfoNotifierHash();

  @$internal
  @override
  AuthInfoNotifier create() => AuthInfoNotifier();
}

String _$authInfoNotifierHash() => r'763aee6f4e07ecce9e6c1eb2e355c49f06a52419';

abstract class _$AuthInfoNotifier extends $AsyncNotifier<AuthInfoModel?> {
  FutureOr<AuthInfoModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AuthInfoModel?>, AuthInfoModel?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<AuthInfoModel?>, AuthInfoModel?>,
        AsyncValue<AuthInfoModel?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
