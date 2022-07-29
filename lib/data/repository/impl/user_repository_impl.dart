import 'package:order_tennis/data/remote/api/data_source/user_remote_data_source.dart';
import 'package:order_tennis/data/remote/api/user_api.dart';
import 'package:order_tennis/data/remote/response/login_response.dart';
import 'package:order_tennis/data/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<LoginResponse> login(String username, String password) async {
    var result;

    final Map<String, dynamic> loginRequest = {
      'Username' = username,
      'Password' = password
    };

    UserApi userApi = UserApi(dio.Dio());

    final response = await userApi.login(loginRequest);
    print('${response.username} - ${response.password}');
  }

  // final UserRemoteDataSource? userRemoteDataSource;
  //
  // UserRepositoryImpl({ this.userRemoteDataSource });

}
