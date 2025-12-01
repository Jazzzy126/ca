import 'package:ca/core/constants/base_url.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/network/dio_client.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  DioClient.instance.setHost(BaseUrl.url.value);

  runApp(const MyApp());
}
