import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

Interceptor get loggerInterceptor {
  return TalkerDioLogger(
    settings: const TalkerDioLoggerSettings(
      enabled: !kIsWeb,
      printRequestData: false,
    ),
  );
}
