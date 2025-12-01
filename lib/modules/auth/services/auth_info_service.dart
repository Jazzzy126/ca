import 'package:retrofit/retrofit.dart';

import '../../../core/network/dio_client.dart';
import '../models/auth_info_model.dart';

part 'auth_info_service.g.dart';

@RestApi()
abstract class AuthInfoService {
  factory AuthInfoService(Dio dio) = _AuthInfoService;

  @GET('/user/info')
  Future<AuthInfoModel> authInfo();
}

AuthInfoService authInfoService = AuthInfoService(DioClient.instance.dio);
