import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../storage/keys/storage_keys.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/custom_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/logger_interceptor.dart';

export 'package:dio/dio.dart';

class DioClient {
  // 私有构造函数，直接初始化 Dio
  DioClient._internal()
      : _dio = Dio(BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
          contentType: Headers.jsonContentType,
        )) {
    _dio.interceptors.addAll([
      authInterceptor,
      customInterceptor,
      errorInterceptor,
      loggerInterceptor,
    ]);
  }

  // 静态单例实例，通过 instance 访问
  static final DioClient instance = DioClient._internal();

  // 私有 Dio 实例，通过 getter 暴露
  final Dio _dio;

  Dio get dio => _dio;

  /// 必须传入 host，用于修改并保存服务器地址
  Future<void> setHost(String host) async {
    _dio.options.baseUrl = host;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.host.key, host);
  }
}
