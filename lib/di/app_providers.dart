
import 'package:order_tennis/di/viewmodel_provider.dart';

import 'network_provider.dart';
import 'repository_provider.dart';

final appProviders = [
  ...networkProviders,
  // ...repositoryProviders,
  ...viewModelProviders,
];
