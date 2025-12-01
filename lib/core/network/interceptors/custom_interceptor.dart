import 'package:dio/dio.dart';

import '../../../app/app.dart';
import '../../../app/router/app_router.gr.dart';
import '../../constants/platform.dart';
import '../../utils/platform_utils.dart';
import '../refresh/refresh_token.dart';

Interceptor get customInterceptor {
  return InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.headers['platform'] = PlatformUtils.isWeb || PlatformUtils.isDesktop
          ? Platform.pc.value
          : Platform.app.value;

      return handler.next(options);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      if (response.statusCode == 200) {
        handler.next(response);
      } else {
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: '失败，拒绝请求，携带错误信息',
            message: '失败，拒绝请求，携带错误信息',
          ),
        );
      }
    },
    onError: (DioException error, ErrorInterceptorHandler handler) async {
      //处理响应错误。
      //如果你想用一些自定义数据来解决这个请求，
      //您可以使用`handler.resolve（Response）`解析`Response`对象。
      if (error.requestOptions.extra.isNotEmpty &&
          error.requestOptions.extra['refresh'] == true) {
        await RefreshToken.clearToken();
        await appRouter.replaceAll([const LoginRoute()]);
      }
      return handler.next(error);
    },
  );
}
