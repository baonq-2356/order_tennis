import '../model/user_model.dart';

abstract class UserRepository {
  Future<UserModel> login();
}
