import 'package:order_tennis/data/model/scheduler_model.dart';

abstract class SchedulerRepository {
  Future<List<SchedulerModel>> getSchedulers();
}
