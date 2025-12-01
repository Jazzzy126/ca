import 'package:retrofit/retrofit.dart';

import '../../../core/network/dio_client.dart';
import '../models/chemical_auto_complete_model.dart';
import '../models/chemical_detail_model.dart';
import '../models/chemical_search_model.dart';
import '../models/params/chemical_search_params.dart';

part 'chemical_service.g.dart';

@RestApi()
abstract class ChemicalService {
  factory ChemicalService(Dio dio) = _ChemicalService;

  @GET('/chemical/auto-complete')
  Future<List<ChemicalAutoCompleteModel>> autoComplete(
    @Query('content') String content,
    @Query('size') int size,
  );

  @GET('/chemical/search')
  Future<ChemicalSearchModel> search(
    @Queries() ChemicalSearchParams params,
  );

  @GET('/chemical/detail')
  Future<ChemicalDetailModel> detail(
    @Query('id') int id,
    @Query('cas') String cas,
  );
}

ChemicalService chemicalService = ChemicalService(DioClient.instance.dio);
