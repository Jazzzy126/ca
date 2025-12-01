// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthNotifier)
const authProvider = AuthNotifierProvider._();

final class AuthNotifierProvider
    extends $AsyncNotifierProvider<AuthNotifier, SecureToken?> {
  const AuthNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authNotifierHash();

  @$internal
  @override
  AuthNotifier create() => AuthNotifier();
}

String _$authNotifierHash() => r'96c09764711cdf109c126c85dbda5dad0a759a49';

abstract class _$AuthNotifier extends $AsyncNotifier<SecureToken?> {
  FutureOr<SecureToken?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<SecureToken?>, SecureToken?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<SecureToken?>, SecureToken?>,
        AsyncValue<SecureToken?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
