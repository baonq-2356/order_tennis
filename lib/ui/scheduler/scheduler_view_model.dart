import 'package:flutter/material.dart';
import 'package:order_tennis/data/repository/scheduler_repository.dart';

class SchedulerViewModel extends ChangeNotifier {
  final SchedulerRepository schedulerRepository;

  SchedulerViewModel(this.schedulerRepository);

  void getSchedulers() async {
    await schedulerRepository.getSchedulers();
  }
}
