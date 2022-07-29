import 'package:order_tennis/data/repository/user_repository.dart';
import 'package:order_tennis/ui/login/login_view_model.dart';
import 'package:provider/provider.dart';

final _loginViewModelProvider = ChangeNotifierProvider<LoginViewModel>(
    create: (context) => LoginViewModel(userRepository: context.read<UserRepository>()),
);

final viewModelProviders = [_loginViewModelProvider];
