import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/chemical_search_model.dart';
import '../models/params/chemical_search_params.dart';
import '../services/chemical_service.dart';

part 'chemical_search_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChemicalSearchNotifier extends _$ChemicalSearchNotifier {

  int size = 10;

  ChemicalSearchParams _params = const ChemicalSearchParams();

  @override
  FutureOr<ChemicalSearchModel?> build() async {
    return null;
  }

  Future<void> search(ChemicalSearchParams params) async {
    _params = params;
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => chemicalService.search(
        params.copyWith(
          current: 1,
          size: size,
        ),
      ),
    );
  }

  Future<void> pagination(int current) async {
    state = await AsyncValue.guard(
      () => chemicalService.search(
        _params.copyWith(
          current: current,
          size: size,
        ),
      ),
    );
  }
}
