import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../models/error_response.dart';

Interceptor get errorInterceptor {
  return InterceptorsWrapper(
    onError: (DioException error, ErrorInterceptorHandler handler) async {
      String errorMsg = '请求失败';

      // 尝试解析错误响应为模型
      if (error.response?.data != null) {
        try {
          final ErrorResponse errorResponse =
              ErrorResponse.fromJson(error.response!.data);
          errorMsg = errorResponse.errorMsg;
        } catch (e) {
          errorMsg = '解析错误信息失败';
        }
      }

      toastification.show(
        title: const Text('提示'),
        description: Text(errorMsg),
        type: ToastificationType.error,
        autoCloseDuration: const Duration(seconds: 3),
      );

      handler.next(error);
    },
  );
}
