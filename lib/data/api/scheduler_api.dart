import 'package:order_tennis/data/model/scheduler_model.dart';

abstract class SchedulerApi {
  Future<List<SchedulerModel>> getSchedulers();
}
