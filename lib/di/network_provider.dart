
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:order_tennis/constants.dart';
import 'package:provider/provider.dart';

// import '../data/remote/api/user_api.dart';

final _dioProvider = Provider<Dio>(create: (_) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    contentType: contentType
  );

  final dio = Dio(options);
  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
  dio.httpClientAdapter = DefaultHttpClientAdapter();
  return dio;
});

// final _userApiProvider = Provider<UserApi>(create: (context) =>
//     UserApi(context.read<Dio>()));

final networkProviders = [_dioProvider,
  // _userApiProvider
];
