import 'package:dio/dio.dart';

import '../refresh/refresh_token.dart';

Interceptor get authInterceptor {
  return RefreshToken.oAuth2;
}
