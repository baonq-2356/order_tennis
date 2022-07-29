import 'package:flutter/material.dart';
import 'package:order_tennis/ui/login/login_screen.dart';
import 'package:order_tennis/ui/scheduler/scheduler_screen.dart';

import 'data/resources/strings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Tennis',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: loginScreen,
      routes: {
        loginScreen: (context) => const LoginScreen(),
        schedulerScreen: (context) => const SchedulerScreen(),
      },
    );
  }

}
