import 'package:retrofit/retrofit.dart';

import '../../../core/network/dio_client.dart' hide Headers;
import '../models/token_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST('/token')
  @FormUrlEncoded()
  @Extra({'login': true})
  Future<TokenModel> token(@Body() Map<String, dynamic> body);


  @POST('/token')
  @FormUrlEncoded()
  @Extra({'refresh': true})
  Future<TokenModel> refreshToken(@Body() Map<String, dynamic> body);
}

AuthService authService = AuthService(DioClient.instance.dio);
