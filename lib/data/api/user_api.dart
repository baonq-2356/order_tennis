import 'package:order_tennis/data/model/user_model.dart';

abstract class UserApi {
  Future<UserModel> login();
}
