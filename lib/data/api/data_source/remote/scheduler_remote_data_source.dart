import 'package:order_tennis/data/api/scheduler_api.dart';
import 'package:order_tennis/data/model/scheduler_model.dart';

class SchedulerRemoteDataSource extends SchedulerApi {

  @override
  Future<List<SchedulerModel>> getSchedulers() async {
    return List<SchedulerModel>.generate(10, (index) => SchedulerModel());
  }
}
