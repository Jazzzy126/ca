import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/chemical_detail_model.dart';
import '../models/chemical_search_model.dart';
import '../services/chemical_service.dart';

part 'chemical_detail_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChemicalDetailNotifier extends _$ChemicalDetailNotifier {
  @override
  FutureOr<ChemicalDetailModel?> build() async {
    return null;
  }

  Future<void> fetch(ChemicalSearchRowModel data) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => chemicalService.detail(data.id, data.cas),
    );
  }
}
