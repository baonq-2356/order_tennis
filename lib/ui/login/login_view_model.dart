import 'package:flutter/material.dart';

import '../../data/repository/user_repository.dart';

class LoginViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  LoginViewModel({required this.userRepository});

  void login() async {
    await userRepository.login('nguyen.van.bac33@gmail.com', '123456789');
  }
}
