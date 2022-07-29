import 'package:flutter/material.dart';
import 'package:order_tennis/app.dart';
import 'package:order_tennis/di/app_providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: appProviders,
      child: const App(),
    ),
  );
}


