import 'package:flutter/material.dart';

import '../../data/repository/user_repository.dart';

class LoginViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  LoginViewModel(this.userRepository);

  void login() async {
    await userRepository.login();
  }
}
