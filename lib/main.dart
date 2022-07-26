import 'package:flutter/material.dart';
import 'package:order_tennis/data/api/data_source/remote/scheduler_remote_data_source.dart';
import 'package:order_tennis/data/api/data_source/remote/user_remote_data_source.dart';
import 'package:order_tennis/data/repository/impl/scheduler_repository_impl.dart';
import 'package:order_tennis/data/repository/impl/user_repository_impl.dart';
import 'package:order_tennis/data/repository/scheduler_repository.dart';
import 'package:order_tennis/data/repository/user_repository.dart';
import 'package:order_tennis/resouces/strings.dart';
import 'package:order_tennis/ui/login/login_screen.dart';
import 'package:order_tennis/ui/login/login_view_model.dart';
import 'package:order_tennis/ui/scheduler/scheduler_screen.dart';
import 'package:order_tennis/ui/scheduler/scheduler_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          Provider<UserRepository>(
              create: (_) => UserRepositoryImpl(UserRemoteDataSource()),
          ),
          Provider<SchedulerRepository>(
              create: (_) => SchedulerRepositoryImpl(
                  SchedulerRemoteDataSource()
              ),
          ),
          ChangeNotifierProvider<LoginViewModel>(
              create: (context) => LoginViewModel(
                  context.read<UserRepository>()
              ),
          ),
          ChangeNotifierProvider<SchedulerViewModel>(
              create: (context) => SchedulerViewModel(
                context.read<SchedulerRepository>()
              ),
          ),
        ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Tennis',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: Strings.loginScreen,
      routes: {
        Strings.loginScreen: (context) => const LoginScreen(),
        Strings.schedulerScreen: (context) => const SchedulerScreen(),
      },
    );
  }
}

