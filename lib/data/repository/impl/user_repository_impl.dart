import 'package:order_tennis/data/api/data_source/remote/user_remote_data_source.dart';
import 'package:order_tennis/data/model/user_model.dart';
import 'package:order_tennis/data/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);

  @override
  Future<UserModel> login() {
    return userRemoteDataSource.login();
  }
}
