import 'package:order_tennis/data/api/user_api.dart';
import 'package:order_tennis/data/model/user_model.dart';

class UserRemoteDataSource extends UserApi {
  @override
  Future<UserModel> login() async {
    return UserModel();
  }
}
