import 'package:dio/dio.dart';
import 'package:order_tennis/constants.dart';
import 'package:retrofit/http.dart';

import '../response/login_response.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'https://otsprod.vin3s.vn/VinHomeMobileApp/screenservices/VinHomeMobileApp/')
abstract class UserApi {
  factory UserApi(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(
        receiveTimeout: receiveTimeout,
        connectTimeout: connectTimeout,
        contentType: contentType
    );

    return _UserApi(dio, baseUrl: baseUrl);
  }

  @POST('MainFlow/SignIn/ActionDoLogin')
  Future<LoginResponse> login (@Body() Map<String, dynamic> body);
}
