import 'package:order_tennis/data/remote/response/login_response.dart';

abstract class UserRepository {

  Future<LoginResponse> login(String username, String password);
}
